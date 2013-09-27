<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchResults.ascx.cs" Inherits="Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts.SearchResults" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<style>
    .red {
        color: red;
    }

    .green {
        color: green;
        font-weight: bold;
    }

</style>

<h2>Results</h2>

<asp:Repeater runat="server" ID="rpResults" OnItemDataBound="rpResults_OnItemDataBound">
    <ItemTemplate>
        <h4>
            <sc:Text runat="server" Field="News Heading" ID="heading" />
        </h4>
        <sc:Text runat="server" Field="News content" ID="content" />
    </ItemTemplate>
</asp:Repeater>

<h2>Facets</h2>

<ul>
    <asp:Repeater runat="server" ID="rpFacets" OnItemDataBound="rpFacets_OnItemDataBound">
        <ItemTemplate>
            <li>
                <asp:HyperLink runat="server" ID="link"></asp:HyperLink>(<asp:Literal runat="server" ID="number"></asp:Literal>)
            </li>
        </ItemTemplate>
    </asp:Repeater>
</ul>

