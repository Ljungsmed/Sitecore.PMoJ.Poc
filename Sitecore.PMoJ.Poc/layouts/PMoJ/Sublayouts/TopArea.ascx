<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopArea.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.TopArea" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<div class="topo">
	<div class="imagemtopo">
		<IMG SRC="/images/d1_sub-area_Topo.jpg" ALT="" >
	</div>
	<div class= "search">
		<input class="#search2:focus" id="Text1" style="height:35px;width:230px;color:grey;" type="text" onFocus="this.value=''" value="     Pesquise no Portal">			
	</div>
	<div class="imagembotao">
		<IMG SRC="/images/d1_sub-area_imagembotao.jpg" ALT="" width="40px">
	</div>
	<div class="login">
		<sc:Sublayout ID="Sublayout2" runat="server" Path="/layouts/PMoJ/Sublayouts/HalloUser.ascx" />
	</div>
</div>
