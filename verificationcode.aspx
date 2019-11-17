<%@ Page Title="Watako Code Verification Page" Language="C#" MasterPageFile="~/master/pageSubpages.Master" AutoEventWireup="True"
    CodeBehind="verificationcode.aspx.cs" Inherits="globalResource.verificationcode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <br />
    <br />
    <br />
    <div id="componentTube" class="componentTube" style="height: 451px !important; top: 20px !important;
        left: 0px; width: 80%">
        <h3 style="left: 106px; top: 5px; width: 500px; position: absolute">
            Verification Code Page
        </h3>
        <br />
        <br />
        <asp:HyperLink ID="hypLink" runat="server" Style="left: 106px; margin-top: 15px !important;
            width: 100px; position: absolute; font-size: 15px"><< Back</asp:HyperLink>
        <br />
        <div id="errorDiv" runat="server" class="infomsgVer" style="margin: 25px auto 0 auto;
            position: relative; width: 570px; min-height: 200px; z-index: 99">
            <table style="width: 100%;">
                <tr>
                    <td>
                        <span style="float: left; display: inline">User Name:</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Style="float: left; display: inline"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="float: left; display: inline">Email:</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Style="float: left; display: inline"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td rowspan="3">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr style="margin: 0px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnSend" runat="server" Text="Send Code" class="createbt btn btn-primary pull-left" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="Div3" style="margin: 0px auto; width: 570PX;">
            <br />
            <p style="font-weight: bold">
                For more information, contact us @<a href="http://www.chuktexDesk.com/contactus"
                    style="font-size: 10pt; color: blue"> http://www.chuktexDesk.com/contactus </a>
            </p>
        </div>
        <div style="clear: both; height: 100px">
        </div>
    </div>
</asp:Content>
