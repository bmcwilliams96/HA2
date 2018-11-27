<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="HAssignment2.AccountDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 254px;
        }
        .auto-style3 {
            width: 249px;
        }
        .auto-style4 {
            width: 168px;
        }
        .auto-style5 {
            width: 139px;
        }
        .auto-style6 {
            width: 254px;
            height: 26px;
        }
        .auto-style7 {
            width: 249px;
            height: 26px;
        }
        .auto-style8 {
            width: 168px;
            height: 26px;
        }
        .auto-style9 {
            width: 139px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="accountNameLabel" runat="server" Text="Account Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="accountLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="accountTypeLable" runat="server" Text="Account Type:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="typeLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="accountBalanceLabel" runat="server" Text="Account Balance:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="balanceLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="withdrawTB" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="withdrawButton" runat="server" Text="Withdraw Money" Width="122px" OnClick="withdrawButton_Click" />
                </td>
                <td>
                    <asp:Label ID="WithdrawLabelError" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="eligibleForLoanLabel" runat="server" Text="Eligible for Loan:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="loanLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="loanButton" runat="server" Text="Want a Loan?" Width="122px" OnClick="loanButton_Click" PostBackUrl="~/AccountPages/LoanApplicationPage.aspx" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="addressProviderLabel" runat="server" Text="Address Provided:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="addressLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
