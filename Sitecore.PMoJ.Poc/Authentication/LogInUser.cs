using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Sitecore.Security.Accounts;
using Sitecore.Security.Authentication;

namespace Sitecore.PMoJ.Poc.Authentication
{
    public class LogInUser
    {
        public bool Autehnticate( string userName, string password)
        {
            //Call Citizen authentication method with userName and password
            //if true (or object is returned) do below

            bool isLoggedIn = false;

            isLoggedIn = AuthenticationManager.Login("Sitecore\\CitizenUser", "b", true);

            return isLoggedIn;
        }
    }
}