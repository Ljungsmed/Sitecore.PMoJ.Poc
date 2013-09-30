<%@ Page Language="c#" CodePage="65001" AutoEventWireup="true" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.MainLayout" CodeBehind="MainLayout.aspx.cs" %>

<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ OutputCache Location="None" VaryByParam="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="CODE_LANGUAGE" content="C#" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <%--<link href="/default.css" rel="stylesheet" />--%>
    <sc:VisitorIdentification runat="server" />

    <link href="/css/wffm.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" type="text/css" href="/css/home.css">
    <link href="/css/dcmegamenu.css" rel="stylesheet" type="text/css" />

    <asp:Literal runat="server" ID="ltStyle" />

    <%--<link href="/default.css" rel="stylesheet" />--%>
    <sc:VisitorIdentification runat="server" />

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type='text/javascript' src='/js/jquery.hoverIntent.minified.js'></script>
    <script type='text/javascript' src='/js/jquery.dcmegamenu.1.2.js'></script>
    <script type="text/javascript">
        $(document).ready(function ($) {
            $('#mega-menu-tut').dcMegaMenu({
                rowItems: '2',
                speed: 'fast'
            });
        });
    </script>
</head>
<body>

    <form runat="server">
        <sc:Placeholder runat="server" Key="top area" />
        <div class="wrap" style="<%= WrapStyle %>">
            <div class="dcjq-mega-menu">
                <sc:Sublayout runat="server" Path="/layouts/PMoJ/Sublayouts/TopMenu.ascx" />
            </div>
        </div>
        <%--Main Content--%>
        <sc:Placeholder Key="main content" runat="server" />
        <%--/Main Content--%>

        <div class="menufooter">
            <div class="menubot">
                <div class="menuentidades">
                    <menubothead>Entidades</menubothead>
                    <br>
                    <menubot><a href="#">
				<a href="#">Secret&aacuteria Geral<br> do Minist&eacuterio da Justi&ccedila<br><br></a>
				<a href="#">Inspe&ccedil&atildeo-Geral <br> dos servi&ccedilos de Justi&ccedila	<br><br></a>
				<a href="#">Dire&ccedil&atildeo-Geral da<br> Pol&iacutetica de Justi&ccedila <br><br></a>
				<a href="#">Dire&ccedil&atildeo-Geral da<br> Administra&ccedil&atildeo de Justi&ccedila <br><br></a>
				<a href="#">Dire&ccedil&atildeo-Geral da<br> Reinser&ccedil&atildeo e Servi&ccedilos <br><br></a>
				<a href="#">Prisionais <br><br></a>
				<a href="#">Pol&iacutecia Judici&aacuteria<br><br><br></a>
				<a href="#"><b>Ver Todas</b></a>
			</menubot>
                </div>
                <div class="menujustica">
                    <menubothead>A Justi&ccedila</menubothead>
                    <br>
                    <menubot>
				<a href="#">Tribunais<br><br></a>
				<a href="#">Minist&eacuterio Público <br><br></a>
				<a href="#">Meios de Resolu&ccedil&atildeo<br>
				Alternativa de Lit&iacutegios<br>(RAL)<br><br></a>
				<a href="#">Registos e Notariado<br><br></a>
				<a href="#">Propriedade Industrial<br><br></a>
				<a href="#">Reinser&ccedil&atildeo Social <br><br></a>
				<a href="#">Execu&ccedilão de Penas <br><br></a>
				<a href="#">Medicina Legal</a>
			</menubot>
                </div>
                <div class="menuservicos">
                    <menubothead>Servi&ccedilos</menubothead>
                    <br>
                    <menubot>
				<a href="#">Como fazer?<br><br></a>
				<a href="#">Como funciona? <br><br></a>
				<a href="#">Formul&aacuterios <br><br></a>
				<a href="#">Servi&ccedilos Online <br><br></a>
				<a href="#">Simuladores <br><br></a>
			</menubot>
                </div>
                <div class="menujustica">
                    <menubothead>Informa&ccedil&atildeo Juridica</menubothead>
                    <br>
                    <menubot>
				<a href="#">Projectos Legislativos <br>em debate<br><br></a>
				<a href="#">Legisla&ccedil&atildeo nacional <br><br></a>
				<a href="#">Legisla&ccedil&atildeo internacional <br><br></a>
				<a href="#">&Aacutereas do Direito <br><br></a>
				<a href="#">Bases de Dados <br><br></a>
				<a href="#">Gloss&aacuterio de termos <br><br></a>
				<a href="#">Profiss&otildees</a>
			</menubot>
                </div>
                <div class="menujustica">
                    <menubothead>Estat&iacutesticas</menubothead>
                    <br>
                    <menubot>
				<a href="#">Sistemas de Informa&ccedil&atildeo <br>das estat&iacutesticas da Justi&ccedila<br><br></a>
				<a href="#">Dados Estat&iacutesticos do IRN <br><br></a>
				<a href="#">Financiamento da Justi&ccedila</a>
			</menubot>
                </div>
                <div class="menupublicacoes">
                    <menubothead>Publica&ccedil&otildees</menubothead>
                    <br>
                </div>
                <br>
            </div>
            <div class="bottom">
                <img style="margin-left: 90px;" src="/images/b1_news_bottom.jpg" alt="" width="900px">
            </div>
        </div>
    </form>
</body>
</html>
