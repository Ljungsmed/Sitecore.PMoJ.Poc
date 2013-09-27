<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopArea.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.TopArea" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<div style="height: 70px; width: 1100px; background-color: #202123; margin-left: 90px">
    <div style="width: 350px; float: left; margin-left: 90px;">
        <img src="/images/d1_sub-area_Topo.jpg" alt="" />
    </div>
    <div style="width: 230px; float: left; margin-top: 15px">
        <input class="#search:focus" id="search" style="height: 35px; width: 230px; color: grey;"
            type="text" onfocus="this.value=''" value="     Pesquise no Portal" />
    </div>
    <div style="width: 50px; float: left; margin-top: 10px">
        <img src="/images/d1_sub-area_imagembotao.jpg" alt="" width="40px" />
    </div>
    <div style="width: 200px; float: left; margin-top: 15px; float: right">
        <sc:Sublayout ID="Sublayout1" runat="server" Path="/layouts/PMoJ/Sublayouts/HalloUser.ascx" />
    </div>
</div>
