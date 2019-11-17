<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="activation.aspx.cs" Inherits="IRSLCRM.activation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        input[type="text"]{
            width: 30px;
            margin-right: 5px;
            padding: 4px;
            font-size: 13px;   
            border-radius: 4px;     
        }
        .auto-style2 {
            width: 305px;
            margin: 0px auto;
        }
        .auto-style1 {
            width: 282px;
            margin: 0px auto;
            padding: 10px;  
            border-radius: 4px; 
            border:solid 2px #999;

        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <h3>This Application Requires Activation</h3>
            <h4>
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Text=""></asp:Label></h4>

            <asp:Panel ID="Panel" runat="Server" class="auto-style1">
                <asp:TextBox MaxLength="4" Style="margin-right: 5px" ID="TextBox1" runat="server" Width="36px"></asp:TextBox>
                <asp:TextBox MaxLength="4" Style="margin-right: 5px" ID="TextBox2" runat="server" Width="36px"></asp:TextBox>
                <asp:TextBox MaxLength="4" Style="margin-right: 5px" ID="TextBox3" runat="server" Width="36px"></asp:TextBox>
                <asp:TextBox MaxLength="4" Style="margin-right: 5px" ID="TextBox4" runat="server" Width="36px"></asp:TextBox>
                <asp:TextBox MaxLength="4" Style="margin-right: 5px" ID="TextBox5" runat="server" Width="36px"></asp:TextBox>
            </asp:Panel>
            <p>
                <asp:Button ID="btnActivate" runat="server" OnClick="btnActivate_Click" Text="Activate" />   &nbsp; <asp:Button ID="btnRequestActivation" runat="server" OnClick="btnRequestActivation_Click" Text=" Request For New Activation Key " Width="217px" />

            </p>      
        </div>
    </form>
</body>
</html>
