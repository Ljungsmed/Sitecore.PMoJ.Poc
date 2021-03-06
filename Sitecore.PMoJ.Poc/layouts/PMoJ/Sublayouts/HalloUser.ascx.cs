﻿using System.Web;
using Sitecore.Links;
using System;

namespace Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts
{
    public partial class HalloUser : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            loggedin.Visible = false;
            login.Visible = true;

            if (Sitecore.Context.IsLoggedIn)
            {
                ltUser.Text = "Welcome " + Sitecore.Context.User.Profile.FullName;
                loggedin.Visible = true;
                login.Visible = false;
            }
            //if (Sitecore.Context.IsLoggedIn)
            //{
            //    ltUser.Text = "Welcome " + Sitecore.Context.User.Name;
            //    btLogout.Visible = true;
            //}
            //else
            //{
            //    ltUser.Text = "Please login";
            //    btLogout.Visible = false;
            //}
            // Put user code to initialize the page here
        }

        protected void btLogout_OnClick(object sender, EventArgs e)
        {
            Sitecore.Security.Authentication.AuthenticationManager.Logout();
            Response.Redirect(LinkManager.GetItemUrl(Sitecore.Context.Item));
        }

        protected void OnClick(object sender, EventArgs e)
        {
            var username = Username.Text;
            var password = Password.Text;

            if (Sitecore.Security.Authentication.AuthenticationManager.Login("extranet\\" +username, password))
            {
                Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
                return;
            }

            
            IncorrectUsername.Visible = true;
        }
    }
}
