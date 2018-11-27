using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HAssignment2.MyClasses
{
    public class GenerateSessionObjects
    {
        List<Account> allAccounts = new List<Account>();

        public GenerateSessionObjects()
            {
            Account ch1 = new Account();
            ch1.Type = "Checking";
            ch1.Balance = 56999.33;
            ch1.Nickname = "My Chk1";
            allAccounts.Add(ch1);

            Account ch2 = new Account();
            ch2.Type = "Checking";
            ch2.Balance = 72699.56;
            ch2.Nickname = "My Chk2";
            allAccounts.Add(ch2);

            Account sv1 = new Account();
            sv1.Type = "Savings";
            sv1.Balance = 50000.00;
            sv1.Nickname = "Sav3";
            allAccounts.Add(sv1);

            int index = 0;
            HttpContext.Current.Session["index"] = index;
            Customer cust = new Customer("Brandon McWilliams", "123 GOAT Road Louisville, KY 40214");
            HttpContext.Current.Session["customer"] = cust;
            HttpContext.Current.Session["Accounts List"] = allAccounts;

            }
    }
}