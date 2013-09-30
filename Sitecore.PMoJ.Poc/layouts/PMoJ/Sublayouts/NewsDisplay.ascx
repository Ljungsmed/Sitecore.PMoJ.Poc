<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsDisplay.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.NewsDisplay" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div id="test-div" class="dcjq-mega-div" style="top: 153px; left: 0px; bottom: 0px; position: absolute; background-color: black; opacity: .50; z-index: 90; width: 100%;">
</div>
<br>
<br>
<br>

<div class="titulo">
    <div>
        <titulo>
                    <sc:Text Field="news heading" runat="server" />
                </titulo>
    </div>
</div>
<div class="linha">
	<IMG SRC="/images/b2_noticias_line.jpg" ALT="" width="900px">
</div>

<div class="subtitulo">
    <subtitulo>
                <sc:Text Field="news abstract" runat="server" />
            </subtitulo>
</div>

<div class="body">
    <div class="imagemlateral">
        <sc:Image Field="news image" runat="server" />
    </div>
    <div style="height:200px; width:500px; float:right;margin-top:-170px">
        <newsbody><sc:Text Field="news content" runat="server" /></newsbody>
    </div>
</div>
<div class="anexos">

    <div>
        <img src="/images/b2_noticias_anexos.jpg" alt="">
    </div>
</div>
<div class="bottom"> 
    <img src="/images/a1_homepage_footer.jpg" alt="" width="1100px">
</div>
