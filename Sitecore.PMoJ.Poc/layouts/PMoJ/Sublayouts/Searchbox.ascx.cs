namespace Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts
{
    using System;

    public partial class Searchbox : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            // Put user code to initialize the page here
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("/search.aspx?q=" + tbSearchbox.Text);
        }
    }
}