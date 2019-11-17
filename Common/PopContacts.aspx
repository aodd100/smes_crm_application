<%@ Page Language="c#" Trace="false" CodeBehind="PopContacts.aspx.cs" Inherits="IRSLCRM.PopContacts" AutoEventWireup="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head runat="server">
    <title>Irsl</title>
    <link rel="stylesheet" type="text/css" href="/css/G.css">
</head>
<script type="text/javascript" src="/js/common.js"></script>

<body bgcolor="#e5e5e5" leftmargin="0" topmargin="2" marginwidth="0" marginheight="0">

    <form runat="server">
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
                            Contact
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
                        <input type="hidden" id="CONTACTID" value='<%# DataBinder.Eval(Container.DataItem, "ContactID")%>' /> 
                        <input type="hidden" id="lblPhone" value='<%# DataBinder.Eval(Container.DataItem, "Phone1")%>' />                         
                        <input type="hidden" id="FullName" value='<%# DataBinder.Eval(Container.DataItem, "FullName")%>' />
                        <input type="hidden" id="COMPANYNAME" value='<%# DataBinder.Eval(Container.DataItem, "COMPANYNAME")%>' />
                        <input type="hidden" id="Email" value='<%# DataBinder.Eval(Container.DataItem, "Email")%>' />
                        <label class="linked" style="cursor:pointer"><%# DataBinder.Eval(Container.DataItem, "FullName")%></label>&nbsp;
                    </td>
                    <td class="GridItem">
                        <label><%# DataBinder.Eval(Container.DataItem, "COMPANYNAME")%></label>&nbsp;
                    </td>

                    <td class="GridItem">
                        <label><%# DataBinder.Eval(Container.DataItem, "Email")%></label>&nbsp;
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr>
                    <td class="GridItem">
                        <input type="hidden" id="CONTACTID" value='<%# DataBinder.Eval(Container.DataItem, "ContactID")%>' /> 
                        <input type="hidden" id="lblPhone" value='<%# DataBinder.Eval(Container.DataItem, "Phone1")%>' />                         
                        <input type="hidden" id="FullName" value='<%# DataBinder.Eval(Container.DataItem, "FullName")%>' />
                        <input type="hidden" id="COMPANYNAME" value='<%# DataBinder.Eval(Container.DataItem, "COMPANYNAME")%>' />
                        <input type="hidden" id="Email" value='<%# DataBinder.Eval(Container.DataItem, "Email")%>' />
                        <label class="linked" style="cursor:pointer"><%# DataBinder.Eval(Container.DataItem, "FullName")%></label>&nbsp;
                    </td>
                    <td class="GridItem">
                        <label><%# DataBinder.Eval(Container.DataItem, "COMPANYNAME")%></label>&nbsp;
                    </td>

                    <td class="GridItem">
                        <label><%# DataBinder.Eval(Container.DataItem, "Email")%></label>&nbsp;
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <input class="ControlContactID" type="hidden" runat="server" id="ControlContactID" />
        <input class="ControlContactName" type="hidden" runat="server" id="ControlContactName" />
    </form>
    <script type="text/javascript" src="../Scripts/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../js/jquery-ui.js"></script>
    <script type="text/javascript">
        var sch, control, control1;
        $(function () {
            $("table.normal td label.linked").on('click', function () {
                var CONTACTID = $(this).parent().find("#CONTACTID").val();
                var FullName = $(this).parent().find("#FullName").val();
                var COMPANYNAME = $(this).parent().find("#COMPANYNAME").val();
                var Email = $(this).parent().find("#Email").val();
                var Phone = $(this).parent().find("#lblPhone").val();


                window.parent.$("#textDivProsepectName").css("display","none");
                var $el = window.parent.$("#lblDivProsepectName");
                $el.css("display", "block");;
                $el.find("#CONTACTID").val(CONTACTID);
                $el.find("#lblProsepectName").text(FullName);
                $el.find("#lblPhone").text(Phone);
                $el.find("#lblEmail").text(Email);
                $el.find("#lblCompnay").text(COMPANYNAME);

                window.close();
                parent.HideBox("hidebox");
                //parent.HideBox1();
            });

        });
    </script>
</body>
</html>
