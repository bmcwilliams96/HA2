<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoanApplicationPage.aspx.cs" Inherits="HAssignment2.AccountPages.LoanApplicationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 237px;
        }
        .auto-style4 {
            height: 26px;
            width: 237px;
        }
        .auto-style5 {
            width: 168px;
        }
        .auto-style6 {
            height: 26px;
            width: 168px;
        }
        .auto-style7 {
            width: 237px;
            height: 29px;
        }
        .auto-style8 {
            width: 168px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            width: 237px;
            height: 33px;
        }
        .auto-style11 {
            width: 168px;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="nameTitleLabel" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="nameLabel" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="salaryTitleLabel" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="salaryTxtBx" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="ageTitleLabel" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="ageTxtBx" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="loanAmountTitleLabel" runat="server" Text="Loan Amount"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="loanTxtBx" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="submitButton" runat="server" Text="Submit" Width="115px" OnClick="submitButton_Click" />
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="toAccountSummaryButton" runat="server" Text="Go to Account Summary" Width="196px" OnClick="toAccountSummaryButton_Click" CausesValidation="False" PostBackUrl="~/AccountPages/AccountSummary.aspx" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="toAccountDetailsButton" runat="server" Text="Go to Account Details" Width="196px" OnClick="toAccountDetailsButton_Click" CausesValidation="False" PostBackUrl="~/AccountPages/AccountDetails.aspx" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <asp:Label ID="loanApprovalLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
