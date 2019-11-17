<%@ Page Title="IRSL Home" Language="C#" MasterPageFile="~/master/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IRSLCRM.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; vertical-align: top;height: 49em;" cellpadding="0" border="0" cellspacing="0">
        <tbody>
            <tr>
                <td class="pageTitle" valign="top" align="left">Welcome to IRSL consulting custom application page<br />
                    kindly, see on the left bar for quick access to list of applications available for you.
                </td>
            </tr>
            <tr>
                <td class="normal" style="padding-bottom: 20px; display:flex " align="left">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/crmLink.png" />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/crmLink1.png" />
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
