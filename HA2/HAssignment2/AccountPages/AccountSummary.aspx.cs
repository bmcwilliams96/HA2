using HAssignment2.MyClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAssignment2
{
    public partial class AccountSummary : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Accounts List"] == null)
            {
                GenerateSessionObjects sessionGen = new GenerateSessionObjects();
            }

            List<Account> allAccounts  = (List<Account>)Session["Accounts List"];
            Customer cust = (Customer)Session["customer"];
            welcomeLabel.Text = "Welcome " + cust.FullName;

            foreach(Account acct in allAccounts)
            {
                allAccountsListbox.Items.Add(acct.Nickname);
            }
        }

        protected void showDetailsButton_Click(object sender, EventArgs e)
        {
            Session["index"] = allAccountsListbox.SelectedIndex;
            Server.Transfer("AccountDetails.aspx");
        }
    }
}