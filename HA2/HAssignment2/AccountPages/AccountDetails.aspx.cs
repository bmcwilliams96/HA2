using HAssignment2.MyClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAssignment2
{
    public partial class AccountDetails : System.Web.UI.Page
    {
        int selectionIndex;
        Account selectedAcct;
        List<Account> acctList; 
        Customer cust;

        protected void Page_Load(object sender, EventArgs e)
        {
            acctList = (List<Account>)Session["Accounts List"];
            cust = (Customer)Session["customer"];
            selectionIndex = (int)Session["index"];
            selectedAcct = acctList[selectionIndex];
            accountLabel.Text = selectedAcct.Nickname;
            typeLabel.Text = selectedAcct.Type;
            balanceLabel.Text = selectedAcct.Balance.ToString("c");
            loanLabel.Text = selectedAcct.hasLoanOffer().ToString();
            addressLabel.Text = cust.FullAddress;
            double balanceMax = selectedAcct.Balance;
        }

        protected void withdrawButton_Click(object sender, EventArgs e)
        {
            double accountBalance;
            double accountWithdraw = double.Parse(withdrawTB.Text);

            if (balanceLabel.Text.Contains("$"))
            {
                accountBalance = double.Parse(balanceLabel.Text.Substring(1));
            }
            else
            {
                accountBalance = double.Parse(balanceLabel.Text);
            }

            if (accountWithdraw > accountBalance)
            {
                WithdrawLabelError.Text = "Cannot withdraw more than account balance";
            }
            else
            {
                double newAccountBalance = accountBalance - accountWithdraw;
                selectedAcct = acctList[selectionIndex];
                selectedAcct.Balance = newAccountBalance;
                balanceLabel.Text = selectedAcct.Balance.ToString("c");
                acctList = (List<Account>)Session["Accounts List"];
                acctList[selectionIndex] = selectedAcct;
                loanLabel.Text = selectedAcct.hasLoanOffer().ToString();
            }
        }

        protected void loanButton_Click(object sender, EventArgs e)
        {
              
        }
    }
}