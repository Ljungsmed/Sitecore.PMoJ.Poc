<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsDisplay.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.NewsDisplay" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<div style="height: 50px; width: 960px;">
        </div>
        <div style="height: 100px; width: 960px; margin-left: 90px; font-family: Lato; font-weight: 400; font-color: #d14747;">
            <div>
                <titulo>
                    <sc:Text Field="news heading" runat="server" />
                </titulo>
            </div>
        </div>
        <div style="height: 70px; width: 960px; margin-left: 90px;">
            <img src="/images/b2_noticias_line.jpg" alt="" width="900px">
        </div>
        <div style="height: 200px; width: 850px; margin-left: 90px;">
            <subtitulo>
                <sc:Text Field="news abstract" runat="server" />
            </subtitulo>
        </div>

        <div style="height: 400px; width: 960px; margin-left: 90px;">
            <div style="height: 200px; width: 400px; float: left">
                <sc:Image Field="news image" runat="server" />
            </div>
            <div style="height: 200px; width: 500px; float: left">
                <sc:Text Field="news content" runat="server" />
            </div>
        </div>
        <div style="height: 400px; width: 960px; margin-left: 90px;">

            <div>
                <img src="images/b2_noticias_anexos.jpg" alt="">
            </div>
        </div>