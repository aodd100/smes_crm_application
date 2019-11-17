<%@ Page Language="c#" Trace="false" CodeBehind="PopAccount.aspx.cs" Inherits="IRSLCRM.PopAccount" AutoEventWireup="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head runat="server">
    <title>Irsl</title>
    <link rel="stylesheet" type="text/css" href="/css/G.css">
</head>
<script type="text/javascript" src="/js/common.js"></script>

<body bgcolor="#e5e5e5" leftmargin="0" topmargin="2" marginwidth="0" marginheight="0">

    <form runat="server">
        <%--<asp:Literal id="SomeJS" runat="server"/>--%>
        <table width="98%" border="0" cellspacing="0" align="center">
            <tr>
                <td align="left" width="100">
                    <asp:TextBox ID="FindIt" startfocus autoclick="Find" runat="server" class="BoxDesign" />
                </td>
                <td align="left">
                    <asp:LinkButton ID="Find" runat="server" class="save">Find</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br>
        <asp:Repeater ID="ContactReferrer" runat="server">

            <HeaderTemplate>
                <table border="0" cellpadding="3" cellspacing="0" width="98%" class="normal" align="center">
                    <tr>
                        <td class="GridTitle">
                            <%=wrm.GetString("Pactxt1")%>
                            <asp:Literal ID="HeaderInfo" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr id="NoRecords" runat="server" visible="False">
                        <td class="GridItem">

                            <label style="color: red">No records</label>
                        </td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td class="GridItem">
                        <input type="hidden" id="SalesPersonID" value='<%# DataBinder.Eval(Container.DataItem, "UID") %>' />
                        <input type="hidden" id="SalesPersonName" value='<%# ParseJSString((string)DataBinder.Eval(Container.DataItem, "UserName"))%>' />
                        <label class="linked"><%# DataBinder.Eval(Container.DataItem, "UserName")%></label>&nbsp;
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr>
                    <td class="GridItemAltern">
                        <input type="hidden" id="SalesPersonID" value='<%# DataBinder.Eval(Container.DataItem, "UID") %>' />
                        <input type="hidden" id="SalesPersonName" value='<%# ParseJSString((string)DataBinder.Eval(Container.DataItem, "UserName"))%>' />
                        <label class="linked"><%# DataBinder.Eval(Container.DataItem, "UserName")%></label>&nbsp;
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                <%--    <div id="NoRecords" runat="server" visible="false">
        No records are available.
    </div>--%>
	</table>
            </FooterTemplate>
        </asp:Repeater>
        <input class="ControlSalesPersonID" type="hidden" id="ControlSalesPersonID" runat="server" />
        <input class="ControlSalesPersonName" type="hidden" runat="server" id="ControlSalesPersonName" />
    </form>
    <script type="text/javascript" src="../Scripts/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../js/jquery-ui.js"></script>
    <script type="text/javascript">
        var sch, control, control1;
        $(function () {
            $("table.normal td label.linked").on('click', function () {
                var id = $(this).parent().find("#SalesPersonID").val();
                var txt = $(this).parent().find("#SalesPersonName").val();

                var control = $(".ControlSalesPersonID").val();
                var control2 = $(".ControlSalesPersonName").val();

                var $el = window.parent.$(control2);
                $el.val(txt);
                $el.prev().val(id);
                window.close();
                parent.HideBox("hidebox");
                //parent.HideBox1();
            });
            
        });
    </script>
</body>
</html>
