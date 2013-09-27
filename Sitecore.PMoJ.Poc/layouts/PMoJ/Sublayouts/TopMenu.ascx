<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopMenu.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.TopMenu" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<asp:Repeater ID="RepeaterTopMenu" runat="server" ItemType="Sitecore.Data.Items.Item" OnItemDataBound="RepeaterTopMenu_ItemDataBound">
    <HeaderTemplate>
        <ul id="mega-menu-tut" class="menu">
    </HeaderTemplate>
    <ItemTemplate>        		
			<li class="<%#: Item["menu style"] %>">
                <a href="#"><%#: Item["title"] %></a>
                <asp:Repeater ID="RepeaterSubMenu" runat="server" ItemType="Sitecore.Data.Items.Item" >
                    <HeaderTemplate>
                        <%--<ul class="<%#: Item.Parent["menu style"] %>">--%>
                        <ul class="red">
                    </HeaderTemplate>
				    <ItemTemplate>
					    <li id="menu-item-1"><a href="#">Secretária-Geral do Ministério da Justiça</a></li>
				    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                    </asp:Repeater>
			</li>
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>
