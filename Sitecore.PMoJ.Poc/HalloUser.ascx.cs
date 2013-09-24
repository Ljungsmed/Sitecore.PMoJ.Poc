using Sitecore.Links;

namespace Sitecore.PMoJ.Poc
{
    using System;

    public partial class HalloUser : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            if (Sitecore.Context.IsLoggedIn)
            {
                ltUser.Text = "Welcome " + Sitecore.Context.User.Name;
                btLogout.Visible = true;
            }
            else
            {
                ltUser.Text = "Please login";
                btLogout.Visible = false;
            }
            // Put user code to initialize the page here
        }

        protected void btLogout_OnClick(object sender, EventArgs e)
        {
            Sitecore.Security.Authentication.AuthenticationManager.Logout();
            Response.Redirect(LinkManager.GetItemUrl(Sitecore.Context.Item));
        }
    }
}