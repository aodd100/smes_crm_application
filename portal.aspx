<%@ Page Title="" Language="C#" MasterPageFile="~/master/CRMSite.Master" AutoEventWireup="true" CodeBehind="portal.aspx.cs" Inherits="IRSLCRM.portal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentMenu" runat="server">
                                    <asp:HyperLink class="sidebtn" ID="crm" runat="server" NavigateUrl="BASE_COMPANIES/create">New Company</asp:HyperLink>
                                    <asp:HyperLink class="sidebtn" ID="hr" runat="server">Advance Search</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

</asp:Content>
