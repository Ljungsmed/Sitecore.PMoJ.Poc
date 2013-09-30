namespace Sitecore.PMoJ.Poc.layouts.PMoJ
{
    using System;
    using System.Web;
    using System.Web.UI;

    public partial class MainLayout : Page
    {
        public string WrapStyle { get; set; }

        private void Page_Load(object sender, System.EventArgs e)
        {
            if (Sitecore.Context.Item.TemplateName == "FrontPage")
            {
                ltStyle.Text = ("<link href='/css/menu.css' rel='stylesheet' type='text/css' />");
                WrapStyle = "margin-left:120px;";
            }
            else
            {
                ltStyle.Text = ("<link href='/css/menu_dark.css' rel='stylesheet' type='text/css' />");
                WrapStyle = "";
            }
        }
    }
}
