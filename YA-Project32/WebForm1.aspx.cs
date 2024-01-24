using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YA_Project32
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static double tot = .0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string dateExp = TbExp.Text;
            DateTime dateValue;
            if (DateTime.TryParseExact(dateExp, "MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out dateValue))
            {
                Label1.Text = "";
            }
           else
            {
                Label1.Text = "";
            }
            if(dateValue < DateTime.Now)
            {
                Label2.Text = "Should Be > Current Date!!";
            }
            else
            {
                Label2.Text = "";
            }
        }
        protected bool MasterValid(string TbCardNb)
        {
            int cardLength = TbCardNb.Length;
            if (cardLength != 18)
            {
                return false;
            }
            int prefix = int.Parse(TbCardNb.Substring(0, 2));
            return (prefix >= 51 && prefix <= 55) ; 
        }

        protected bool VisaValid(string TbCardNb)
        {
            int cardLength = TbCardNb.Length;
            if (cardLength != 13 && cardLength != 16)
            {
                return false;
            }
            int prefix = int.Parse(TbCardNb.Substring(0, 1));
            return prefix == 4 ;
        }

        protected bool AmericanValid(string TbCardNb)
        {
            int cardLength = TbCardNb.Length;
            if (cardLength != 15)
            {
                return false;
            }
            int prefix = int.Parse(TbCardNb.Substring(0, 2));
            return prefix == 34 || prefix == 37;
        }

        protected void BtnVal_Click(object sender, EventArgs e)
        {
            string cardtype = RListType.SelectedValue;
            string cardNb = TbCardNb.Text;

            switch (cardtype)
            {
                case "Master":
                    if (!MasterValid(cardNb))
                        LabCard.Text = "Not a valid MasterCard";
                    else
                        LabCard.Text = "";
                    break;

                case "Visa":
                    if (!VisaValid(cardNb))
                        LabCard.Text = "Not a valid VisaCard";
                    else
                        LabCard.Text = "";
                    break;

                case "American":
                    if (!AmericanValid(cardNb))
                        LabCard.Text = "Not a valid AmericanExpress Card";
                    else
                        LabCard.Text = "";
                    break;
            }

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            string name = TbName.Text;
            String amount = TbAmount.Text.ToString();

            ListBoxCost.Items.Add(name + "," + amount);
            tot += Convert.ToDouble(amount);
            LabTot.Text = tot.ToString();
            int nb = ListBoxCost.Items.Count;
            labNbCost.Text = nb.ToString();


        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            TbMail.Text = "";
            TbPass1.Text = "";
            TbPass2.Text = "";
            TbName.Text = "";
            TbAge.Text = "";
            TbAdd.Text = "";
            TbPosCode.Text = "";
            TbCardNb.Text = "";
            TbExp.Text = "";
            TbKey.Text = "";
            TbAmount.Text = "";


        }

        protected void BtnDel_Click(object sender, EventArgs e)
        {
            ListBoxCost.Items.Remove(ListBoxCost.SelectedItem);
            int nb = ListBoxCost.Items.Count;
            labNbCost.Text = nb.ToString();

        }

        protected void BtnUp_Click(object sender, EventArgs e)
        {
            if (ListBoxCost.SelectedIndex > 0)
            {
                int curentIndex = ListBoxCost.SelectedIndex;
                ListItem currentItem = ListBoxCost.SelectedItem;

                ListBoxCost.Items.Remove(currentItem);
                ListBoxCost.Items.Insert(curentIndex - 1, currentItem);

                ListBoxCost.SelectedIndex = curentIndex - 1;
            }
        }

        protected void BtnDown_Click(object sender, EventArgs e)
        {
            if (ListBoxCost.SelectedIndex < ListBoxCost.Items.Count -1 && ListBoxCost.SelectedIndex >= 0)
            {
                int currentIndex = ListBoxCost.SelectedIndex;
                ListItem currentItem = ListBoxCost.SelectedItem;

                ListBoxCost.Items.Remove(currentItem);
                ListBoxCost.Items.Insert(currentIndex + 1, currentItem);

                ListBoxCost.SelectedIndex = currentIndex + 1;
            }
        }
    }
}
