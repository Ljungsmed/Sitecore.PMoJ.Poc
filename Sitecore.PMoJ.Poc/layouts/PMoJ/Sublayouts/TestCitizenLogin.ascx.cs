namespace Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts
{
    using System;
    using Sitecore.PMoJ.Poc.Authentication;

    public partial class TestCitizenLogin : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LogInUser logInUser = new LogInUser();

            bool isLoggedIn = logInUser.Autehnticate(string.Empty, string.Empty);

            Literal1.Text = isLoggedIn + " - " + Sitecore.Context.User.Name;

            if (isLoggedIn)
                Response.Redirect("http://sitecoreministryofjustice/sitecore/shell");
        }
    }
}