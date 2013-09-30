<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HalloUser.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.HalloUser" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<asp:Panel runat="server" ID="loggedin" Visible="False" style="color:white">
<asp:Literal runat="server" ID="ltUser"></asp:Literal> <asp:Button runat="server" ID="btLogout" Text="Logout" OnClick="btLogout_OnClick"/>
    </asp:Panel>
<asp:Panel runat="server" ID="login">
<login><a href="#" onclick="loginForm(this)">Login</a> ou <a href="/register">Registo</a></login>
<div id="loginform" style="background-color:#fff;height: 150px; width: 200px;color:black;z-index:1000;position: relative;margin:10px; padding-top:20px;border:1px solid grey;display:none">
    <div style="margin-left: 10px;color:red;display: none;" runat="server" id="IncorrectUsername" ViewStateMode="Enabled">Wrong Username or Password</div>
   <div style="margin-left: 10px;">Username:</div> <asp:TextBox runat="server" ID="Username"></asp:TextBox>
    
    <div style="margin-left: 10px;">Password:</div> <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
    <asp:Button runat="server" Text="Login" OnClick="OnClick" />
    

</div>

<script>


    function loginForm(e) {
        
        if ($("#loginform").is(":hidden")) {
            $("#loginform").slideDown();
        } else {
            $("#loginform").slideUp();
        }
        
    }

</script>
    
    </asp:Panel>