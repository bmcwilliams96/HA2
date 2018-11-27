using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HAssignment2.MyClasses
{
    public class Customer
    {
        private String _FullAddress;
        private String _FullName;

        public Customer(String name, String address)
        {

            _FullName = name;
            _FullAddress = address;
        }

        public String FullAddress
        {
            get
            {
                return _FullAddress;
            }

        }

        public String FullName
        {
            get
            {
                return _FullName;
            }

        }
    }
}