<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="YA_Project32.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            font-size: large;
            text-align: center;
        }

        .auto-style3 {
            width: 254px;
        }

        .auto-style4 {
            width: 216px;
        }

        .auto-style5 {
            text-align: center;
        }

        .auto-style6 {
            font-size: large;
        }

        .auto-style7 {
            width: 251px;
        }

        .auto-style8 {
            width: 229px;
        }

        .auto-style9 {
            width: 287px;
        }

        .auto-style11 {
            font-weight: bold;
        }

        .auto-style12 {
            width: 340px;
        }

        .auto-style13 {
            width: 268px;
        }

        .auto-style14 {
            width: 157px;
        }

        .auto-style15 {
            margin-left: 0px;
        }

        .auto-style16 {
            width: 170px;
        }

        .auto-style17 {
            width: 461px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3"><strong>Connection Information</strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>E-Mail : </strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TbMail" runat="server"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TbMail" Display="Dynamic" ErrorMessage="Should be of the form email@hote.domain" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Password</strong>:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TbPass1" runat="server"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TbPass1" Display="Dynamic" ErrorMessage="Should be at least 8 characters" ForeColor="Red" ValidationExpression=".{8,}"></asp:RegularExpressionValidator>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Re-Write Password:</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TbPass2" runat="server"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TbPass1" ControlToValidate="TbPass2" ErrorMessage="Should have the same value of Password" ForeColor="Red"></asp:CompareValidator>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5" colspan="3"><strong><span class="auto-style6">Personal Information</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Name:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TbName" runat="server"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbName" Display="Dynamic" ErrorMessage="Obligatory Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Age:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TbAge" runat="server"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TbAge" Display="Dynamic" ErrorMessage="Should be &gt;=18" ForeColor="Red" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="18"></asp:CompareValidator>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Address:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TbAdd" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Postal Code:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TbPosCode" runat="server"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TbPosCode" Display="Dynamic" ErrorMessage="Should be composed of 5 digits" ForeColor="Red" ValidationExpression="^\d{5}$"></asp:RegularExpressionValidator>
                </strong></td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5" colspan="3"><strong>Credit Card Details</strong></td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Type of card: </strong></td>
                <td class="auto-style17">
                    <asp:RadioButtonList ID="RListType" runat="server" RepeatDirection="Horizontal" CssClass="auto-style15">
                        <asp:ListItem Selected="True" Value="Master">Master Card</asp:ListItem>
                        <asp:ListItem Value="Visa">Visa Card</asp:ListItem>
                        <asp:ListItem Value="American">American Express</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Card Number:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TbCardNb" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <strong>
                        <asp:Label ID="LabCard" runat="server" ForeColor="Red"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Expiry Date:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TbExp" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>

                    <strong>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TbExp" Display="Dynamic" ErrorMessage="Should be of the form MM/YYYY" ForeColor="Red" ValidationExpression="^(0[1-9]|1[0-2])/[1-9]\d{3}$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                        <br />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Key:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TbKey" runat="server"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TbKey" Display="Dynamic" ErrorMessage="Should be an integer of 4 digit" ForeColor="Red" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Amount:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TbAmount" runat="server"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TbAmount" Display="Dynamic" ErrorMessage="Should be a Positive integer" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="BtnVal" runat="server" CssClass="auto-style11" Text="Validate" OnClick="BtnVal_Click" />
                </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="BtnAdd" runat="server" CssClass="auto-style11" Text="Add" OnClick="BtnAdd_Click" />
                </strong></td>
                <td>
                    <asp:Button ID="BtnClear" runat="server" CssClass="auto-style11" Text="Clear" OnClick="BtnClear_Click" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5" colspan="4"><strong>Customer List</strong></td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:ListBox ID="ListBoxCost" runat="server" Width="285px"></asp:ListBox>
                </td>
                <td class="auto-style13"><strong>Nb Costumer:
                    <asp:Label ID="labNbCost" runat="server" Text="0"></asp:Label>
                </strong></td>
                <td class="auto-style14"><strong>Total Amount:</strong></td>
                <td>
                    <asp:Label ID="LabTot" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="BtnDel" runat="server" CssClass="auto-style11" Text="Delete" OnClick="BtnDel_Click" />
                </strong></td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="BtnUp" runat="server" CssClass="auto-style11" Text="UP" Width="85px" OnClick="BtnUp_Click" />
                </strong></td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="BtnDown" runat="server" CssClass="auto-style11" Text="Down" Width="92px" OnClick="BtnDown_Click" Style="height: 26px" />
                </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
