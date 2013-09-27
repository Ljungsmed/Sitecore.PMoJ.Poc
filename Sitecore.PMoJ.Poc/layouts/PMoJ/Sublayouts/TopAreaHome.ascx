<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopAreaHome.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.TopAreaHome" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<div id="MainHeadLogoAndSearch" style="width: 1100px;">
    <div id="LogoAndLogin" style="background-color: #202123; height: 75px; width: 100%">
        <div style="width: 400px; float: left; margin-left: 90px;">
            <img src="images/home_area_top.jpg" alt="">
        </div>

        <div style="width: 200px; float: left; margin-top: 15px; float: right">
            <login><a href="#">Login</a> ou <a href="#">Registo</a></login>
        </div>
    </div>

    <div id="dsearcharea" class="welcome" style="background-image: url(images/home_justica.jpg)">
        <div style="padding-top: 30px;">Bem-Vindo ao sítio do Ministério da Justiça</div>
        <div class="desc" style="padding-top: 20px;">Aqui poderá consultar toda a informação ligada ao Ministério da Justiça</div>
        <div style="margin-top: 40px; width: 100%;">
            <div>
                <input class="#search:focus" id="search" style="height: 30px; width: 250px; color: grey; float: left; margin-left: 400px" type="text" onfocus="this.value=''" value="Pesquise no Portal">
            </div>

            <div>
                &nbsp;<img src="/images/home_searchButton.jpg" style="height: 30px; width: 50px; float: left;" alt="">
            </div>
        </div>
        <div class="desc">
            <topsearch>TOP PESQUSA:<a href="#">Apoio Judiciário</a>,<a href="#">Contratos de Trabalho</a>, <a href="#">Estatísticas 2013</a></topsearch>
        </div>
    </div>
</div>
