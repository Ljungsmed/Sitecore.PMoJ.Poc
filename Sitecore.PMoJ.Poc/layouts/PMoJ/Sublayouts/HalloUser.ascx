﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HalloUser.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.HalloUser" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%--<asp:Literal runat="server" ID="ltUser"></asp:Literal>--%> <asp:Button runat="server" ID="btLogout" Text="Logout" OnClick="btLogout_OnClick"/>
<login><a href="#">Login</a> ou <a href="#">Registo</a></login>