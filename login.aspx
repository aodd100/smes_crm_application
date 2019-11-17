<%@ Page Title="Login" Language="C#" MasterPageFile="~/master/CRMLogin.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="IRSLCRM.login" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="ContentTbl" style="vertical-align: top;width:40%" cellpadding="0" border="0" cellspacing="0">
        <tbody>
            <tr>
                <td class="pageTitle2" valign="top" align="left">
                    <div class="bl">
                        <div class="br">
                            <div class="tl">
                                <div class="tr">
                                    <table cellspacing="1" cellpadding="5" align="center" style="width: 100%;">
                                        <tbody>
                                            <tr>
                                                <td class="normal" colspan="2" align="center" nowrap>
                                                    <b>


                                                        <%--<asp:Label ID="header" runat="server" Text="<%# Resources:DisplayResource,headerResource1 %>"></asp:Label>--%>
                                                        <asp:Label ID="header" runat="server" meta:resourcekey="headerResource1" Text="Login" style="font-size:large"></asp:Label>

                                                    </b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30%" align="right" nowrap>
                                                    <span class="normal">
                                                        <asp:Label style="font-size: 13px;" ID="lblUserName" runat="server" meta:resourcekey="lblUserNameResource1"></asp:Label>
                                                    </span>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="BoxDesign" ID="TxtUsr" runat="server" jumpret="txtPwd" meta:resourcekey="TxtUsrResource1"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30%" align="right">
                                                    <span class="normal">
                                                        <asp:Label ID="lblUserPassword" style="font-size: 13px;" runat="server" meta:resourcekey="lblUserPasswordResource1"></asp:Label>
                                                    </span>
                                                </td>
                                                <td>
                                                    <asp:TextBox CssClass="BoxDesign" ID="TxtPwd" runat="server" TextMode="Password" meta:resourcekey="TxtPwdResource1"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <asp:CheckBox ID="CkbPL" runat="server" Font-Size="13px" Text="Remember My Password" TextAlign="Left" />
                                                    <br />
                                                    <asp:Label ID="TxtMessage" runat="server" ForeColor="Red" Font-Names="Verdana" Font-Size="8pt" meta:resourcekey="TxtMessageResource1"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <asp:Button CssClass="ListResultTitle btn btn-primary" ID="Submit" runat="server"  meta:resourcekey="SubmitResource1" OnClick="BtnLogin_Click"></asp:Button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="30">&nbsp;</td>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                </td>
            </tr>
            <tr>
                <td class="normal" style="padding-bottom: 20px; display: none" align="left">
                    <input name="visualizationType" id="visualizationType0" value="0" checked="" type="radio">All visible companies
                                <span id="personalView" style="display: none;">
                                    <input name="visualizationType" id="visualizationType1" value="1" type="radio">Only personal companies
                                </span>
                    <input name="visualizationType" id="visualizationType2" value="2" type="radio">Only group companies (System Administrators)
                                <input name="visualizationType" id="visualizationType3" value="3" type="radio">Owner
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
