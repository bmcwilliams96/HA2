using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HAssignment2.MyClasses
{
    public class Account
    {
        private String _Type;
        private double _Balance;
        private String _Nickname;

        public String Type
        {
            get { return _Type; }
            set { _Type = value; }
        }

        public double Balance
        {
            get { return _Balance; }
            set { _Balance = value; }
        }

        public string Nickname
        {
            get { return _Nickname; }
            set { _Nickname = value; }
        }

        public Boolean hasLoanOffer()
        {
            if (Balance < 15000)
            {
                return false;
            }
            else
            {
                return true;
            }
        }


    }
}