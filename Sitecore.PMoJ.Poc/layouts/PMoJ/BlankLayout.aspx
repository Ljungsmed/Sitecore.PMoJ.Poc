﻿<%@ Page language="c#" Codepage="65001" AutoEventWireup="true" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.BlankLayout" CodeBehind="BlankLayout.aspx.cs" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ OutputCache Location="None" VaryByParam="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">                  
  <head>
    <title>
    
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="CODE_LANGUAGE" content="C#" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href="/default.css" rel="stylesheet" />
    <link href="/css/wffm.css" rel="stylesheet" />
    <sc:VisitorIdentification runat="server" />
  </head>
  <body>
  <form method="post" runat="server" id="mainform">
    <sc:Placeholder runat="server" Key="main content" />
  </form>
  </body>
</html>
