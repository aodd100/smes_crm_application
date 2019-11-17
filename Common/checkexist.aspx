<%@ Page Language="c#" Trace="false" CodeBehind="checkexist.aspx.cs" Inherits="IRSLCRM.Common.checkexist" AutoEventWireup="false" %>

<html>
<head runat="server">
    <title>:: Irsl ::</title>
    <link rel="stylesheet" type="text/css" href="/css/G.css">
</head>
<body bgcolor="#e5e5e5" leftmargin="0" topmargin="2" marginwidth="0" marginheight="0">
    <asp:Label ID="ImgOK" runat="server" CssClass="normal"></asp:Label>
    <asp:Repeater ID="CompaniesRep" runat="server" EnableViewState="False">
        <HeaderTemplate>
            <table border="0" cellpadding="3" cellspacing="0" width="98%" class="normal" align="center">
                <tr>
                    <td class="GridTitle"><%=wrm.GetString("Paztxt1")%></td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td class="GridItem">
                    <input type="hidden" id="CompanyID" value='<%# DataBinder.Eval(Container.DataItem, "COMPANYID") %>' />
                    <input type="hidden" id="CompanyName" value='<%# ParseJSString((string)DataBinder.Eval(Container.DataItem, "COMPANYNAME"))%>' />
                    <asp:Label style="cursor:pointer" class="linked" ID="Company" runat="server" /></span>&nbsp;</td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr>
                <td class="GridItemAltern">
                    <input type="hidden" id="CompanyID" value='<%# DataBinder.Eval(Container.DataItem, "COMPANYID") %>' />
                    <asp:Label style="cursor:pointer" class="linked" ID="Company" runat="server" /></span>&nbsp;</td>
            </tr>
        </AlternatingItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

 <input class="ControlCompanyIdID" type="hidden" id="ControlCompanyIdID" runat="server" />
 <input class="ControlCompanyName" type="hidden" runat="server" id="ControlCompanyName" />

</body>

    <script type="text/javascript" src="../Scripts/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../js/jquery-ui.js"></script>
    <script type="text/javascript">
        var sch, control, control1;
        $(function () {
            $("table.normal td .linked").on('click', function () {
                var id = $(this).parent().find("#CompanyID").val();
                var txt = $(this).text();

                var control = $(".ControlCompanyIdID").val();
                var control2 = $(".ControlCompanyName").val();

                var $el = window.parent.$("textarea"+control2);
                $el.val(txt);
                $el.prev().val(id);
                window.close();
                parent.HideBox("hidebox");
            });
            
        });
    </script>
</html>

