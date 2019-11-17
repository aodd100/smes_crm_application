<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="IRSLCRM.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }
        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;
            }

        .popup-content {
            /*Hides pop-up content when there is no "active" class */
            visibility: hidden;
        }

            .popup-content.active {
                /*Shows pop-up content when "active" class is present */
                visibility: visible;
            }

        #dynabox {
            left: 475px;
            top: 159px;
            display: block;
            width: 305px;
            height: 273px;
            border: solid 1px #686767;
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            position: absolute;
        }

        .dynaskin #dragbar span#hidebox {
            text-align: right;
            color: #fff;
            cursor: pointer;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 255px;
        }

        .tabContainer {
            width: 100%;
            height: 350px;
        }

            .tabContainer .buttonContainer {
                height: 7%;
            }

                .tabContainer .buttonContainer button {
                    width: 97px;
                    height: 100%;
                    float: left;
                    border: none;
                    outline: none;
                    cursor: pointer;
                    padding: 2px;
                    font-size: 12px;
                    font-family: sans-serif;
                    background-color: #eee;
                    padding-right: 6px;
                    border-radius: 8px 8px 0px 0px;
                }

                    .tabContainer .buttonContainer button:hover {
                        background-color: #d7d4d4;
                    }

            .tabContainer .tabPanel {
                width: 100%;
                height: 85%;
                padding-top: 1px;
                background-color: grey;
                box-sizing: border-box;
                font-family: sans-serif;
                font-size: 14px;
                display: none;
            }

        .auto-style3 {
            width: 56%;
        }
        .auto-style4 {
            width: 247px;
            height: 187px;
            margin-bottom: 9px;
        }
        .auto-style5 {
            width: 244px;
            height: 190px;
        }
        .auto-style6 {
            width: 511px;
            height: 243px;
        }
        .auto-style7 {
            width: 508px;
        }
        .auto-style8 {
            width: 223px;
        }
        .auto-style9 {
            width: 507px;
        }
        .auto-style10 {
            width: 15px;
        }
    </style>
</head>
<body>
    <div id="dynabox" class="dynaskin" style="left: 475px; top: 159px; display: none;">
        <div id="dragbar" onmousedown="initializedrag(event)" class="CommonColor" style="text-align: right; background-color: #CA5100; color: #fff;">
            <span id="hidebox"><b>X&nbsp;</b></span>
        </div>
        <iframe scrolling="yes" id="dynaframe" name="dynaframe" src="" width="300" height="250" frameborder="0"></iframe>
    </div>
    <table cellpadding="0" cellspacing="0" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2"><a id="companyLookupImg" value="/common/PopAccount.aspx?render=no&amp;textbox=OwnerName&amp;textbox2=OwnerId">
                <img src="/i/lookup.gif" alt="Check existence" data-href="Common/PopPhone.aspx?render=no&amp;ret=Phone&amp;phone=" style="cursor: pointer;" width="24" height="16" border="0">
            </a></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>;;l;l;l;;l;l;l;</td>
            <td class="auto-style2">klklklklkl</td>
            <td>lklkklk</td>
            <td>
                <a id="companyLookupImg1" value="/common/PopAccount.aspx?render=no&amp;textbox=OwnerName&amp;textbox2=OwnerId">
                    <img src="/i/lookup.gif" alt="Check existence" data-href="Common/PopPhone.aspx?render=no&amp;ret=Phone&amp;phone=" style="cursor: pointer;" width="24" height="16" border="0">
                </a>
            </td>
        </tr>
    </table>







    <%--19
20
38

18
23
28/
27
36

nosa
21
36

19
20
21
22
23
24

2 DRAWS
27
28
49--%>


    <div id="tabberpage" class="form-horizontal">
        <div class="topDiv">
            <div class="topDivSub1">
                <h4>NEW COMPANY</h4>
            </div>
            <div class="topDivSub2">
                <input type="submit" value="Save" class="save" />
            </div>
        </div>
        <hr />
        @Html.ValidationSummary(true, "", new { @class = "text-danger" })
    
    <div id="dynabox" class="dynaskin popup-content" style="display: none;">
        <div id="dragbar" onmousedown="initializedrag(event)" class="CommonColor" style="text-align: right; color: #fff;">
            <span id="hidebox"><b>X&nbsp;</b></span>
        </div>
        <iframe scrolling="yes" id="dynaframe" name="dynaframe" src="" frameborder="0"></iframe>
    </div>
        <div class="formMain">
            <div class="formLeft">
            </div>
            <div class="formRight">
            </div>
        </div>
        <div class="formMiddle">
            <span>Discription</span>
        </div>
        <div class="formMiddle">
            <span>Groups</span><span class="righSpan">Can Viewed By</span>
        </div>
        <div class="formMain1">
            <div class="formLeft">
                <select multiple="multiple"></select>
            </div>
            <div class="formMid">
                <button id="butFirst" onclick="javascript:return moveAllfromright()"><<</button>
                <button id="butPrev" onclick="javascript:return moveOnefromright()"><</button>
                <button id="butNext" onclick="javascript:return moveAllfromLeft()">>></button>
                <button id="butLast" onclick="javascript:return moveOnefromLeft()">></button>
            </div>
            <div class="formRight">
                <select multiple="multiple"></select>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input type="submit" value="Save" class="save" />
                <br />
                <br />
            </div>
        </div>
    </div>
  <%--------- Tab-----------------------------------------------%>
    <div class="tabContainer">
        <div class="buttonContainer">
            <button onclick="showPanel(0,'#ffffff')">Opportunity</button>
            <button style="width: 118px;" onclick="showPanel(1,'#ffffff')">Client Companies</button>
            <button onclick="showPanel(2,'#ffffff')">Leads</button>
            <button onclick="showPanel(3,'#ffffff')">Activities</button>
            <button onclick="showPanel(3,'#ffffff')">Partners</button>
            <button onclick="showPanel(3,'#ffffff')">Competitors</button>
        </div>
        <div class="tabPanel">Tab 1:Container</div>
        <div class="tabPanel">Tab 2:Container</div>
        <div class="tabPanel">Tab 3:Container</div>
        <div class="tabPanel">Tab 4:Container</div>
    </div>

    <script src="Scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#dragbar span#hidebox').on('click', function (event) {
                $(".dynaskin").removeClass("active");
                $(".dynaskin").css("display", "none");
            });
            $('#companyLookupImg').on('click', function (event) {

                var val = $("#COMPANYNAME").val();
                var w = 300,
                    h = 250;
                var
                    l = (screen.availWidth - w) / 2,
                    t = (screen.availHeight - h) / 2;
                var strWindowFeatures = "width= " +
                    w +
                    ",height=" +
                    h +
                    ",left=" +
                    l +
                    ", top=" +
                    t +
                    ", scrollbars = yes, location = no, toolbar = no, menubar = no, status = no";
                var x = event.clientX;     // Get the horizontal coordinate
                var y = event.clientY;

                var href = $(this).attr("value");
                var url = href.toString().split(":");
                url = url[0];
                //var mwindow = window.open("/" + url + val, "window1", strWindowFeatures);
                //
                var el = document.getElementById('dynaframe').src = url;
                var modal = document.getElementById('dynabox');
                var span = document.getElementsByClassName("close")[0];

                modal.style.display = "block";
                $("#dynabox").css({
                    "top": y,
                    "left": x
                });
                $("#dynabox, #dynaframe").addClass("active");

                return false;
            });
            $('#companyLookupImg1').on('click', function (event) {

                var val = $("#COMPANYNAME").val();
                var w = 300,
                    h = 250;
                var
                    l = (screen.availWidth - w) / 2,
                    t = (screen.availHeight - h) / 2;
                var strWindowFeatures = "width= " +
                    w +
                    ",height=" +
                    h +
                    ",left=" +
                    l +
                    ", top=" +
                    t +
                    ", scrollbars = yes, location = no, toolbar = no, menubar = no, status = no";
                var x = event.clientX;     // Get the horizontal coordinate
                var y = event.clientY;

                var href = $(this).attr("value");
                var url = href.toString().split(":");
                url = url[0];
                //var mwindow = window.open("/" + url + val, "window1", strWindowFeatures);
                //
                var el = document.getElementById('dynaframe').src = url;
                var modal = document.getElementById('dynabox');
                var span = document.getElementsByClassName("close")[0];

                modal.style.display = "block";
                $("#dynabox").css({
                    "top": y,
                    "left": x
                });
                $("#dynabox, #dynaframe").addClass("active");

                return false;
            });
        });

        var tabButtons = document.querySelectorAll(".tabContainer .buttonContainer button");
        var tabPanels = document.querySelectorAll(".tabContainer .tabPanel");
        function showPanel(panelIndex, colorCode) {
            tabButtons.forEach(function (node) {
                node.style.backgroundColor = "";
                node.style.color = "";
            });
            tabButtons[panelIndex].style.backgroundColor = colorCode;
            tabButtons[panelIndex].style.color = "blue";
            tabPanels.forEach(function (node) {
                node.style.display = "none";
            });

            tabPanels[panelIndex].style.backgroundColor = colorCode;
            tabPanels[panelIndex].style.display = "block";
        }
        showPanel(0, '#ffffff');
    </script>
    <table cellpadding="0" cellspacing="0" class="auto-style3">
        <tr>
            <td colspan="3">
                <div class="form-group">
                    <label>Title</label>
                    <div class="col-md-offset-2 col-md-10">
                        <input type="text" id="textTitle" class="auto-style7" />

                    </div>

                </div>
                
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <div class="form-group">
                    <label>Subject</label>
                    <div class="col-md-offset-2 col-md-10">
                        <input type="text" id="textSubject" class="auto-style9" />

                    </div>

                </div>
               
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <div class="form-group">
                    <label>Mail Type</label>
                    <div class="col-md-offset-2 col-md-10">
                        <select id="ddlMailType" class="auto-style8"></select>

                    </div>

                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="form-group">
                    <select multiple="multiple" class="auto-style5"></select>
                </div>
            </td>
            <td>
                <div class="formMain1">

                    <div class="formMid">
                        <button id="butFirst" onclick="javascript:return moveAllfromright()"><<</button>
                        <button id="butPrev" onclick="javascript:return moveOnefromright()"><</button>
                        <button id="butNext" onclick="javascript:return moveAllfromLeft()">>></button>
                        <button id="butLast" onclick="javascript:return moveOnefromLeft()">></button>
                    </div>

                </div>
            </td>
            <td>
                
                    <div class="form-group">
                       
                            <select multiple="multiple" class="auto-style4"></select>
                   
                    </div>
                
            </td>

        </tr>
        <tr>
            <td colspan="3">
                <div class="form-group">
                    <label>Body</label>
                    <div class="col-md-offset-2 col-md-10">
                        <textarea class="auto-style6"></textarea>

                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10" style="text-align: right">
                        <input type="submit" value="Save" class="save" />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </td>
        </tr>
    </table>




    <table cellpadding="0" cellspacing="0" class="auto-style1" style="position: relative; width: 518px; height: 300px">
        <tr>
            <td style="width: 165px; vertical-align: top;">
                <div class="formMain">
                <div class="formLeft">

                    <div class="form-group">
                       <label>Email Address</label>
                        <div class="col-md-10">
                            <input type="email" name="name" value="" required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label> First Name</label>
                        <div class="col-md-10">
                            <input type="email" name="name" value="" required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label> Last  Name</label>
                        <div class="col-md-10">
                            <input type="email" name="name" value="" required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label> Phone nUmber</label>
                        <div class="col-md-10">
                            <input type="email" name="name" value="" required="true" />
                        </div>
                    </div>
                  </div>
                </div>
            </td>
        </tr>
    </table>




</body>
</html>

  <div class="formRight">
                        <div class="form-group">
                            <h1>Optional Address</h1>
                        </div>
                        <div class="form-group">
                            @Html.LabelFor(model => model.INVOIVINGCITY, htmlAttributes: new { @class = "control-label col-md-2" })
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.INVOIVINGCITY, new { htmlAttributes = new { @class = "form-control" } })
                                @Html.ValidationMessageFor(model => model.INVOIVINGCITY, "", new { @class = "text-danger" })
                            </div>
                        </div>

                        <div class="form-group">
                            @Html.LabelFor(model => model.OPTIONALADDRESS, htmlAttributes: new { @class = "control-label col-md-2" })
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.OPTIONALADDRESS, new { htmlAttributes = new { @class = "form-control" } })
                                @Html.ValidationMessageFor(model => model.OPTIONALADDRESS, "", new { @class = "text-danger" })
                            </div>
                        </div>

                        <div class="form-group">
                            @Html.LabelFor(model => model.OPTIONALSTATE, htmlAttributes: new { @class = "control-label col-md-2" })
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.OPTIONALSTATE, new { htmlAttributes = new { @class = "form-control" } })
                                @Html.ValidationMessageFor(model => model.OPTIONALSTATE, "", new { @class = "text-danger" })
                            </div>
                        </div>

                        <div class="form-group">
                            @Html.LabelFor(model => model.OPTIONALZIPCODE, htmlAttributes: new { @class = "control-label col-md-2" })
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.OPTIONALZIPCODE, new { htmlAttributes = new { @class = "form-control" } })
                                @Html.ValidationMessageFor(model => model.OPTIONALZIPCODE, "", new { @class = "text-danger" })
                            </div>
                        </div>

                        <div class="form-group">
                            @Html.LabelFor(model => model.OPTIONALPHONE, htmlAttributes: new { @class = "control-label col-md-2" })
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.OPTIONALPHONE, new { htmlAttributes = new { @class = "form-control" } })
                                @Html.ValidationMessageFor(model => model.OPTIONALPHONE, "", new { @class = "text-danger" })
                            </div>
                        </div>

                        <div class="form-group">
                            @Html.LabelFor(model => model.OPTIONALFAX, htmlAttributes: new { @class = "control-label col-md-2" })
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.OPTIONALFAX, new { htmlAttributes = new { @class = "form-control" } })
                                @Html.ValidationMessageFor(model => model.OPTIONALFAX, "", new { @class = "text-danger" })
                            </div>
                        </div>

                        <div class="form-group">
                            @Html.LabelFor(model => model.OPTIONALEMAIL, htmlAttributes: new { @class = "control-label col-md-2" })
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.OPTIONALEMAIL, new { htmlAttributes = new { @class = "form-control" } })
                                @Html.ValidationMessageFor(model => model.OPTIONALEMAIL, "", new { @class = "text-danger" })
                            </div>
                        </div>

                        <div class="form-group">
                            @Html.LabelFor(model => model.OPTIONALSTATEPROVINCE, htmlAttributes: new { @class = "control-label col-md-2" })
                            <div class="col-md-10">
                                @Html.EditorFor(model => model.OPTIONALSTATEPROVINCE, new { htmlAttributes = new { @class = "form-control" } })
                                @Html.ValidationMessageFor(model => model.OPTIONALSTATEPROVINCE, "", new { @class = "text-danger" })
                            </div>
                        </div>
                    </div>

