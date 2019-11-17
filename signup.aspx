<%@ Page Title="" Language="C#" MasterPageFile="~/master/resultMasterpage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #hideable-box1 {
          background-color: #fff;
          border: 1px solid #ccc;
          border-radius: 8px;
          height: 178px;
        }
        .recovery {
          margin: 0 auto;
          max-width: 650px;
          padding-bottom: 100px;
          padding-top: 23px;
        }       
        .recovery .recovery-submit {
          margin-top: 20px;
        }
        .recovery .stacked-label {
          line-height: 18px;
          margin-bottom: 8px;
        }
        p {
          line-height: 18px;
          margin: 0 0 1em;
        }
        .secondary {
          color: #666;
          font-size: 11px;
          line-height: 18px;
        }
        input[type="email"], input[type="number"], input[type="password"], input[type="tel"], input[type="text"], input[type="url"], textarea {
          -moz-border-bottom-colors: none;
          -moz-border-left-colors: none;
          -moz-border-right-colors: none;
          -moz-border-top-colors: none;
          background: #fff none repeat scroll 0 0;
          border-color: #c0c0c0 #d9d9d9 #d9d9d9;
          border-image: none;
          border-radius: 1px;
          border-style: solid;
          border-width: 1px;
          box-sizing: border-box;
          display: inline-block;
          height: 29px;
          margin: 0;
          padding-left: 8px;
          width: 17em;
        }
        .recovery .hideable-box div {
          margin-bottom: 5px;
          margin-top: 5px;
        }
        .recovery .hideable-box {
          line-height: 18px;
          margin-left: 22px;
          margin-top: 10px;width: 90%;
        }
        .recovery .hideable-wrapper {
          overflow: hidden;
          transition: all 500ms ease-in-out 0s;
        }
        button.g-button, input.g-button[type="submit"] {
          height: 33px;
          line-height: 25px;
          margin: 0 10px 0 0;
          padding-left: 18px;
          padding-right: 18px;
          vertical-align: middle;
        }
        .g-button-submit {
          background-color: #4d90fe;
          background-image: -moz-linear-gradient(center top , #4d90fe, #4787ed);
          border: 1px solid #3079ed;
          color: #fff;
          text-shadow: 0 1px rgba(0, 0, 0, 0.1);cursor: pointer;
        }
        .g-button {
          -moz-user-select: none;
          background-color: #f5f5f5;
          background-image: -moz-linear-gradient(center top , #f5f5f5, #f1f1f1);
          border: 1px solid rgba(0, 0, 0, 0.1);
          border-radius: 2px;
          color: #444;
          cursor: pointer;
          font-size: 11px;
          font-weight: bold;
          height: 27px;
          line-height: 27px;
          min-width: 46px;
          padding: 0 8px;
          text-align: center;
          transition: all 0.218s ease 0s;
        }

        .recovery h1:first-child {
         margin: 0 0 0 1em;
        }    
        .signp
        {
            color: #666;
            font-size: 11px;
            line-height: 18px;
        }
        .btn-primary {
          background: rgba(0, 0, 0, 0) linear-gradient(to bottom, #fa6210 0%, #aa0d08 100%) repeat scroll 0 0;
          border-radius: 5px;
          color: #fff;
          float: left;
          font-size: 18px;
          font-style: italic;
          height: 35px;
          line-height: 12px;
          margin-bottom: 10px;
          margin-left: 0;
          margin-top: -18px;
          text-align: left;
          width: 119px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="wrap">
        <div class="main">
            <div class="about-top" style="height: 357px">
                <div id="hideable-box1" class="hideable-wrapper recovery" style="height: 193px;">
                <h1>Signing Up?</h1>
                    <div class="hideable-box">
                        <asp:Label Text="" ID="lblError" runat="server" />
                        <div class="secondary">
                            Enter your email address and we will send you link to complete registration</div>
                        <label class="stacked-label">
                            Email address
                            <p>
                                <input type="text" id="txtEmail" runat="server" size="30" class="english-text" value="" name="Email"/></p>
                                <p class="signp">Note: By default, the Watako app saves your data locally. After signing up, you may go premium if you like your data to be saved in your account</p>
                        </label>
                        <p class="recovery-submit">
                            <input type="submit" id="btnSbmit" runat="server" onserverclick="btnSubmit_click" class="button g-button g-button-submit btn-primary " value="Continue"/>
                            
                        </p>
                        <p>Already have an account? <a href="Login.aspx">Sign In</a>
                         <%--<asp:HyperLink ID="signUP" runat="server">register</asp:HyperLink>--%>

                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

