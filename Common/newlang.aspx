<%@ Page Language="c#" Trace="false" CodeBehind="newlang.aspx.cs" EnableViewState="false" Inherits="IRSLCRM.Language" AutoEventWireup="false" %>

<html>
<head runat="server">
    <title>:: Irsl ::</title>
    <link rel="stylesheet" type="text/css" href="/css/G.css">
</head>
<body bgcolor="#e5e5e5" leftmargin="0" topmargin="2" marginwidth="0" marginheight="0">
    <table cellspacing="5" cellpadding="5">
        <tr>
            <td>
                <span class="normal"><b>
                    <asp:Label ID="TitleLbl" runat="server" /></b></span><br>
            </td>
        </tr>
        <tr>
            <td>
                <form runat="server">
                    <p>
                        <asp:DropDownList ID="MyUICulture" runat="server" Width="280px" /><br>
                        <input type="hidden" value="2" name="eng">
                        <font size="2" style="cursor: pointer">[<asp:Label id="EngTxt" runat="server"/>]</font>
                    </p>
            </td>
        </tr>
        <tr>
            <td>
                <span class="normal"><b>
                    <asp:Label ID="Examplelbl" runat="server" /></b><br>
                    <asp:Literal ID="Example" runat="server" /></span>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:LinkButton ID="SubmitCat" runat="server" class="save" /></FORM>
            </td>
        </tr>
    </table>
</body>
</html>
