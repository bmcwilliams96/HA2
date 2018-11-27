using HAssignment2.MyClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAssignment2.AccountPages
{
    public partial class LoanApplicationPage : System.Web.UI.Page
    {
        string acctbalancestring;
        double acctbalance;

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (PreviousPage != null)
                {
                acctbalancestring = ((Label)PreviousPage.FindControl("balanceLabel")).Text;
                Customer cust = (Customer)Session["customer"];
                nameLabel.Text = cust.FullName;

                if (acctbalancestring.ToString().Contains("$"))
                {
                    acctbalancestring = acctbalancestring.Substring(1);
                }

                acctbalance = double.Parse(acctbalancestring);
            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(loanTxtBx.Text) && !string.IsNullOrWhiteSpace(salaryTxtBx.Text) && !string.IsNullOrWhiteSpace(ageTxtBx.Text))
            {
                double minAge = 18;
                double percent = .5;
                if (double.Parse(ageTxtBx.Text) > minAge)
                {
                    if (double.Parse(loanTxtBx.Text) < (percent * double.Parse(salaryTxtBx.Text)))
                    {
                        if (acctbalance > double.Parse(loanTxtBx.Text))
                        {
                            loanApprovalLabel.Text = " Congratulations!! Your loan is approved.";
                        }
                        else
                        {
                            loanApprovalLabel.Text = "Your loan is not approved. Sorry!!";
                        }
                    }
                    else
                    {
                        loanApprovalLabel.Text = "Your loan is not approved. Sorry!!";
                    }
                }
                else
                {
                    loanApprovalLabel.Text = "Your loan is not approved. Sorry!!";
                }
            }
            else
            {
                loanApprovalLabel.Text = "You must fill all fields before you continue!";
            }
        }

        protected void toAccountSummaryButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void toAccountDetailsButton_Click(object sender, EventArgs e)
        {
            
        }
    }
}