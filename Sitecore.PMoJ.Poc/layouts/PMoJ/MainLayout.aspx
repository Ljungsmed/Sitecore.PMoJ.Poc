<%@ Page Language="c#" CodePage="65001" AutoEventWireup="true" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.MainLayout" CodeBehind="MainLayout.aspx.cs" %>

<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ OutputCache Location="None" VaryByParam="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="CODE_LANGUAGE" content="C#" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
<<<<<<< Updated upstream
    <%--<link href="/default.css" rel="stylesheet" />--%>
    <sc:VisitorIdentification runat="server" />
    
    
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" type="text/css" href="/css/home.css">
 
    <link href="/css/dcmegamenu.css" rel="stylesheet" type="text/css" />
    <link href="/css/menu.css" rel="stylesheet" type="text/css" />

=======
    <link href="/default.css" rel="stylesheet" />
    <sc:VisitorIdentification runat="server" />

    <link href="/css/dcmegamenu.css" rel="stylesheet" type="text/css" />
    <link href="/css/menu.css" rel="stylesheet" type="text/css" />
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
   
    <style type="text/css">
        
=======
    <link href="/css/menu_dark.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css' />
    <style type="text/css">
        /* Demo Styles */
        .wrap
        {
            width: 1100px;
            margin: 0 auto;
            margin-left: 90px;
        }

        subtitulo
        {
            font-weight: 10;
            font-family: lato;
            font-size: 22px;
            line-height: 35px;
        }

        titulo
        {
            font-weight: 800;
            font-family: lato;
            font-size: 34px;
            line-height: 30px;
        }

        body
        {
            font-weight: 400;
            font-family: lato;
            font-size: 16px;
            line-height: 25px;
            align: left;
        }

        noticiasbody
        {
            color: #d14747;
            font-weight: 900;
            font-family: lato;
            font-size: 18px;
            line-height: 20px;
            align: left;
        }

            noticiasbody a
            {
                color: #d14747;
                font-weight: 900;
                font-family: lato;
                font-size: 18px;
                line-height: 20px;
                align: left;
            }

                noticiasbody a:hover
                {
                    color: #d14747;
                    font-weight: 900;
                    font-family: lato;
                    font-size: 18px;
                    line-height: 20px;
                    align: left;
                    text-decoration: none;
                }

        imagecaption
        {
            font-family: lato;
            font-size: 10px;
            line-height: 20px;
            align: left;
        }

        #search:focus
        {
            font-family: lato;
            font-size: 15px;
            align: left;
        }

        login
        {
            font-family: lato;
            font-size: 14px;
            color: white;
        }

            login a:hover
            {
                font-family: lato;
                font-size: 14px;
                color: #07aaff;
            }

            login a
            {
                font-family: lato;
                font-size: 14px;
                color: white;
            }

        menubothead
        {
            font-family: lato;
            font-size: 15px;
            color: white;
            font-weight: 700;
        }

        menubot a
        {
            font-family: lato;
            font-size: 13px;
            color: white;
            font-weight: 400;
            text-decoration: underline;
            opacity: 0.7;
            line-height: 15px;
        }

            menubot a:hover
            {
                font-family: lato;
                font-size: 13px;
                color: white;
                font-weight: 400;
                text-decoration: none;
                opacity: 1;
                line-height: 15px;
            }
>>>>>>> Stashed changes
    </style>

</head>
<body>
<<<<<<< Updated upstream
    <form runat="server">
        
        <sc:Placeholder runat="server" Key="top area" />
        
        <div class="wrap"  style="margin-left:120px;">
            <div class="dcjq-mega-menu">            
                <sc:Sublayout ID="Sublayout1" runat="server" Path="/layouts/PMoJ/Sublayouts/TopMenu.ascx" />
            </div>

           <%-- <div class="dcjq-mega-menu">
			    <ul id="mega-menu-tut" class="menu">
				    <li class="red"><a href="#">ENTIDADES</a>
					    <ul class="red">
						    <li id="menu-item-1"><a href="#">Secretária-Geral do Ministério da Justiça</a></li>
						    <li id="menu-item-2"><a href="#">Inspeção-Geral dos Serviços de Justiça</a></li>
						    <li id="menu-item-3"><a href="#">Direção-Geral da Política de Justiça</a></li>
						    <li id="menu-item-4"><a href="#">Direção-Geral da Administração da Justiça</a></li>
						    <li id="menu-item-5"><a href="#">Direção-Geral de Reinserção e Serviços</a></li>
						    <li id="menu-item-6"><a href="#">Prisionais</a></li>
						    <li id="menu-item-7"><a href="#">Polícia Judiciária</a></li>
						    <li id="menu-item-8"><a href="#">Instituto de Gestão Financeira e Equipamentos da Justiça, I.P.</a></li>
						    <li id="menu-item-9"><a href="#">Instituto dos Registos e do Notariado, I. P.</a></li>
						    <li id="menu-item-10"><a href="#">Instituto Nacional de Medicina Legal e Ciências Forenses, I. P.</a></li>
						    <li id="menu-item-11"><a href="#">Intituto Nacional da Propriedade Industrial, I. P.</a></li>
						    <li id="menu-item-12"><a href="#">Centro de Estudos Judiciários</a></li>
						    <li id="menu-item-13"><a href="#">Comissão de Proteção às Vitimas de Crime</a></li>
						    <li id="menu-item-14"><a href="#">Comissão de Programas Especiais de Segurança</a></li>
						    <li id="menu-item-15"><a href="#">Comissão de Apreciação e Controlo da Atividade dos Administradores da Insolvência</a></li>
					    </ul>
				    </li>
				    <li class="yellow"><a href="#">A Justi&ccedila</a>
					    <ul class="yellow">
						    <li id="Li1"><a href="#">Tribunais</a></li>
						    <li id="Li2"><a href="#">Ministério Público</a></li>
						    <li id="Li3"><a href="#">Meios de Resolução Alternativa de Litígios (RAL)</a></li>
						    <li id="Li4"><a href="#">Registos e Notariado</a></li>
						    <li id="Li5"><a href="#">Propriedade Industrial</a></li>
						    <li id="Li6"><a href="#">Reinserção Social</a></li>
						    <li id="Li7"><a href="#">Execução de Penas</a></li>
						    <li id="Li8"><a href="#">Medicina Legal</a></li>
					    </ul>
				    </li>
				    <li class="green"><a href="#">Servi&ccedilos</a>
					    <ul class="green">
						    <li id="Li9"><a href="#">Como fazer?</a></li>
						    <li id="Li10"><a href="#">Como funciona?</a></li>
						    <li id="Li11"><a href="#">Formulários</a></li>
						    <li id="Li12"><a href="#">Serviços online</a></li>
						    <li id="Li13"><a href="#">Simuladores</a></li>
					    </ul>
				    </li>
				    <li class="orange"><a href="#">Informa&ccedil&atildeo Juridica</a>
					    <ul class="orange">
						    <li id="Li14"><a href="#">Projectos legislativos em debate</a></li>
						    <li id="Li15"><a href="#">Legislação nacional</a></li>
						    <li id="Li16"><a href="#">Legislação internacional</a></li>
						    <li id="Li17"><a href="#">Áreas do Direito</a></li>
						    <li id="Li18"><a href="#">Bases de dados</a></li>
						    <li id="Li19"><a href="#">Glossário de termos</a></li>
						    <li id="Li20"><a href="#">Profissões</a></li>
					    </ul>
				    </li>
				    <li class="grey"><a href="#">Estat&iacutesticas</a>
					    <ul class="grey">
						    <li id="Li21"><a href="#">Sistema de Informação das Estatísticas da Justiça</a></li>
						    <li id="Li22"><a href="#">Dados Estatísticos do IRN</a></li>
						    <li id="Li23"><a href="#">Financiamento da Justiça</a></li>
					    </ul>
				    </li>
				    <li class="pink"><a href="#">Publica&ccedil&otildees/EDITAIS</a></li>
		        </ul>
	        </div>--%>

        </div>

        <%-- FROM NEWS HTML
            <div id="test-div" class="dcjq-mega-div" style="top: 153px; left: 0px; bottom: 0px; position: absolute; background-color: black; opacity: .50; z-index: 90; width: 100%;">
        </div>--%>

        <div id="Div1" class="dcjq-mega-div" style="top:388px; left:0px; bottom:0px; position: absolute; background-color: black; opacity: .50; filter: alpha(opacity=50); z-index: 90; width: 100%; height: 100%;"></div>   
=======
    <form method="post" runat="server" id="mainform">
        <sc:Placeholder runat="server" Key="top area" />
        <div class="wrap">
            <div class="dcjq-mega-menu">                
                <sc:Sublayout ID="Sublayout1" runat="server" Path="/layouts/PMoJ/Sublayouts/TopMenu.ascx" />
            </div>
        </div>
        <div id="test-div" class="dcjq-mega-div" style="top: 153px; left: 0px; bottom: 0px; position: absolute; background-color: black; opacity: .50; z-index: 90; width: 100%;">
        </div>
>>>>>>> Stashed changes

        <%--Main Content--%>
        <sc:Placeholder Key="main content" runat="server" />
        <%--/Main Content--%>
<<<<<<< Updated upstream
        
        <div id="BottomMenu" style=" height:500px; width:1100px; background-color:#292a2e; ">
	        <div style="height:70px; width:1100px; background-color:#292a2e">
		        <div style="width:160px; float:left; margin-left:100px ">
			        <menubothead>Entidades</menubothead><br>
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
		        <div style= "width:160px; float:left;">
			        <menubothead>A Justi&ccedila</menubothead><br>
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
		        <div style= "width:160px; float:left;">
			        <menubothead>Servi&ccedilos</menubothead><br>
			        <menubot>
				        <a href="#">Como fazer?<br><br></a>
				        <a href="#">Como funciona? <br><br></a>
				        <a href="#">Formul&aacuterios <br><br></a>
				        <a href="#">Servi&ccedilos Online <br><br></a>
				        <a href="#">Simuladores <br><br></a>
			        </menubot>
		        </div>
		        <div style="width:180px; float:left;">
			        <menubothead>Informa&ccedil&atildeo Juridica</menubothead><br>
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
		        <div style="width:160px; float:left;">
			        <menubothead>Estat&iacutesticas</menubothead><br>
			        <menubot>
				        <a href="#">Sistemas de Informa&ccedil&atildeo <br>das estat&iacutesticas da Justi&ccedila<br><br></a>
				        <a href="#">Dados Estat&iacutesticos do IRN <br><br></a>
				        <a href="#">Financiamento da Justi&ccedila</a>
			        </menubot>
		        </div>
		        <div style="width:140px; float:left;">
			        <menubothead>Publica&ccedil&otildees</menubothead><br>
		        </div>
		        <br>
	        </div>
	        <div style="height:200px; width:1100px; background-color:#292a2e; ">
		        <IMG style="margin-left:90px;width:900px;"SRC="images/home_footer.jpg" ALT="">
	        </div>
        </div> 
=======


        <div>
            <img src="/images/a1_homepage_footer.jpg" alt="" width="1100px">
        </div>
        <div style="height: 500px; width: 1100px; background-color: #292a2e;">
            <div style="height: 70px; width: 1100px; background-color: #292a2e">
                <div style="width: 165px; float: left; margin-left: 90px">
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
                <div style="width: 165px; float: left;">
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
                <div style="width: 163px; float: left;">
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
                <div style="width: 165px; float: left;">
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
                <div style="width: 165px; float: left;">
                    <menubothead>Estat&iacutesticas</menubothead>
                    <br>
                    <menubot>
				<a href="#">Sistemas de Informa&ccedil&atildeo <br>das estat&iacutesticas da Justi&ccedila<br><br></a>
				<a href="#">Dados Estat&iacutesticos do IRN <br><br></a>
				<a href="#">Financiamento da Justi&ccedila</a>
			</menubot>
                </div>
                <div style="width: 140px; float: left;">
                    <menubothead>Publica&ccedil&otildees</menubothead>
                    <br>
                </div>
                <br>
            </div>
            <div style="height: 200px; width: 1100px; background-color: #292a2e;">
                <img style="margin-left: 90px;" src="/images/b1_news_bottom.jpg" alt="" width="900px">
            </div>
        </div>
>>>>>>> Stashed changes
    </form>
</body>
</html>
