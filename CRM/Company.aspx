<%@ Page Title="" Language="C#" MasterPageFile="~/master/CRMSite.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="IRSLCRM.CRM.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentMenu" runat="server">
    <asp:LinkButton ID="NewCompany" runat="server" CssClass="sidebtn" PostBackUrl="~/CRM/Company.aspx" />
    <asp:LinkButton ID="BtnViewAdvanced" runat="server" CssClass="sidebtn" />
    <a id="extlinkBtn" href="javascript:loadScript('/Common/jsrsextlink.aspx')" class="sideBtn sideWithsub"
        onmouseover="loadScript('/Common/jsrsextlink.aspx')" onmouseout="dhm()"
        style="display: none">Search
    </a>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table id="ContactForm" class="normal" width="100%" cellspacing="0" cellpadding="3" border="0" align="center">
        <tbody>
            <tr>
                <td colspan="3" style="border-bottom: 1px solid #000000;">
                    <b>CONTACT INFORMATION
                                        </b>
                </td>
                <td style="border-bottom: 1px solid #000000; padding-bottom: 2px" align="right">
                    <asp:LinkButton OnClick="return ValidatecompanyName();" class="save" ID="SubmitRef" runat="server">SAVE</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td width="45%" valign="TOP">
                    <table class="normal" width="100%" cellspacing="2" cellpadding="0" border="0" align="center">
                        <tbody>
                            <tr>
                                <td width="40%">
                                    <span class="divautoformRequired">COMPANY NAME
                                                    </span>
                                </td>
                                <td>
                                    <table width="100%" cellspacing="0" cellpadding="1" border="0">
                                        <tbody>
                                            <tr>
                                                <td width="95%">
                                                    <textarea name="CompanyName" id="CompanyName" class="BoxDesignReq" startfocus="true" onkeyup="testName(this)" onkeydown="textareajump(event,'invoice_Address')" onkeypress="FirstUp(this,event)" style=""></textarea>
                                                </td>
                                                <td valign="top" nowrap="">
                                                    <img src="/i/lookup.gif" id="companyLookupImg" alt="Check existence" onclick="CreateBox('/Common/checkexist.aspx?render=no&amp;Company='+(document.getElementById('CompanyName')).value,event,300,250)" style="cursor: pointer;" width="24" height="16" border="0">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">ADDRESS
                                                </td>
                                <td>
                                    <input name="Invoice_Address" id="Invoice_Address" class="BoxDesign" onkeypress="FirstUp(this,event)" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">CITY
                                                </td>
                                <td>
                                    <input name="Invoice_City" id="Invoice_City" class="BoxDesign" onkeypress="FirstUp(this,event)" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">STATE / PROVINCE
                                                </td>
                                <td>
                                    <input name="Invoice_StateProvince" id="Invoice_StateProvince" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">NATION
                                                </td>
                                <td>
                                    <input name="Invoice_State" id="Invoice_State" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">ZIP CODE
                                                </td>
                                <td>
                                    <input name="Invoice_Zip" id="Invoice_Zip" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">TELEPHONE
                                                </td>
                                <td>
                                    <table width="100%" cellspacing="0" cellpadding="1" border="0">
                                        <tbody>
                                            <tr>
                                                <td width="95%">
                                                    <input name="Phone" id="Phone" class="BoxDesign" type="text">
                                                </td>
                                                <td>
                                                    <img src="/i/phone.gif" onclick="CreateBox('/Common/PopPhone.aspx?render=no&amp;ret=Phone&amp;phone=' + getElement('Phone').value,event,340,60);" style="cursor: pointer;" border="0">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">FAX
                                                </td>
                                <td>
                                    <table width="100%" cellspacing="0" cellpadding="1" border="0">
                                        <tbody>
                                            <tr>
                                                <td width="95%">
                                                    <input name="Fax" id="Fax" class="BoxDesign" type="text">
                                                </td>
                                                <td>
                                                    <img src="/i/phone.gif" onclick="CreateBox('/Common/PopPhone.aspx?render=no&amp;ret=Fax&amp;phone=' + getElement('Fax').value,event,340,60);" style="cursor: pointer;" border="0">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">E-MAIL
                                                   
                                    <span id="regularExpressionValidator1" controltovalidate="Email" errormessage="*" evaluationfunction="RegularExpressionValidatorEvaluateIsValid" validationexpression="(^\s*)(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}(\s*)$" style="color: Red; visibility: hidden;">*</span>
                                </td>
                                <td>
                                    <table width="100%" cellspacing="0" cellpadding="1" border="0">
                                        <tbody>
                                            <tr>
                                                <td width="95%">
                                                    <input name="Email" id="Email" class="BoxDesign" type="text">
                                                </td>
                                                <td>
                                                    <img src="/images/lookup.gif" onclick="CreateBox('/Common/checkmail.aspx?render=no&amp;mail=' + getElement('Email').value,event,200,100);" style="cursor: pointer;" border="0">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">MAIL MERGE
                                                   
                                    <span id="regularExpressionValidator2" controltovalidate="EmailML" errormessage="*" evaluationfunction="RegularExpressionValidatorEvaluateIsValid" validationexpression="(^\s*)(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}(\s*)$" style="color: Red; visibility: hidden;">*</span>
                                </td>
                                <td>
                                    <table cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr>
                                                <td width="5%">
                                                    <input id="MlCheck" name="MlCheck" checked="checked" type="checkbox">
                                                </td>
                                                <td width="95%">
                                                    <input name="EmailML" id="EmailML" class="BoxDesign" type="text">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">WEBSITE
                                                </td>
                                <td>
                                    <input name="WebSite" id="WebSite" class="BoxDesign" type="text">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td width="10%">&nbsp;
                                     </td>
                <td width="45%" valign="top">
                    <table class="normal" width="100%" cellspacing="2" cellpadding="0" border="0" align="center">
                        <tbody>
                            <tr>
                                <td width="40%">COMPANY CODE
                                                </td>
                                <td width="60%">
                                    <input name="CompanyCode" id="CompanyCode" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">TAX PAYER ID NUMBER
                                        </td>
                                <td width="60%">
                                    <input name="VatId" maxlength="20" id="VatId" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">INDUSTRY
                                    </td>
                                <td>
                                    <select name="Sector" id="Sector" class="BoxDesign">
                                        <option value="0">Select an industry</option>
                                        <option value="29">Actividades recreativas</option>
                                        <option value="1">Agricultura</option>
                                        <option value="17">Alimentos y bebidas</option>
                                        <option value="15">Ambiente</option>
                                        <option value="103">Artesanias</option>
                                        <option value="21">Aseguraciones</option>
                                        <option value="41">Asociaciones o club</option>
                                        <option value="4">Banco</option>
                                        <option value="5">Biotecnologia</option>
                                        <option value="7">Comunicaciones</option>
                                        <option value="8">Construcciones</option>
                                        <option value="9">Consultoria</option>
                                        <option value="10">Educacion</option>
                                        <option value="11">Electronica</option>
                                        <option value="12">Energia</option>
                                        <option value="14">Entretenimiento</option>
                                        <option value="16">Finanzas</option>
                                        <option value="18">Gobierno</option>
                                        <option value="20">Hospitalidad</option>
                                        <option value="13">Ingenieria</option>
                                        <option value="38">Instalaciones electricas</option>
                                        <option value="39">Instalaciones hidraulicas</option>
                                        <option value="26">Manufactura</option>
                                        <option value="22">Mecanica</option>
                                        <option value="27">Media</option>
                                        <option value="31">Mensajeria</option>
                                        <option value="28">No lucrativa</option>
                                        <option value="6">Quimica</option>
                                        <option value="19">Salud</option>
                                        <option value="35">Servicios publicos</option>
                                        <option value="32">Tecnologia</option>
                                        <option value="33">Telecomunicaciones</option>
                                        <option value="37">Textil</option>
                                        <option value="2">Textil</option>
                                        <option value="34">Transporte</option>
                                        <option value="30">Venta al detalle</option>

                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">CONTACT TYPE
                                    </td>
                                <td width="60%">
                                    <select name="ContactType" id="ContactType" class="BoxDesign" onchange="ChangeFree('ContactTypeID',this);">
                                        <option value="0">Select a type</option>
                                        <option value="1">Analista</option>
                                        <option value="2">Cliente</option>
                                        <option value="3">Competidor</option>
                                        <option value="4">Integrador de sistemas</option>
                                        <option value="5">Inversionista</option>
                                        <option value="8">Prospecto</option>
                                        <option value="9">Proveedor</option>
                                        <option value="7">Revendedor</option>
                                        <option value="6">Socio</option>

                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">GROSS SALES
                                       
                                    <span id="valTurnOver" controltovalidate="TurnOver" display="Dynamic" controlhookup="" valuetocompare="0" operator="GreaterThanEqual" evaluationfunction="CompareValidatorEvaluateIsValid" type="Double" decimalchar="," style="color: Red; display: none;">*
                                        </span>
                                </td>
                                <td>
                                    <input name="TurnOver" id="TurnOver" class="BoxDesign" onkeypress="NumbersOnly(event,'.,',this)" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">EMPLOYEES
                                    </td>
                                <td width="60%">
                                    <input name="Employees" id="Employees" class="BoxDesign" onkeypress="NumbersOnly(event,'',this)" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">RATING
                                    </td>
                                <td width="60%">
                                    <select name="Evaluation" id="Evaluation" class="BoxDesign">
                                        <option value="0">Select a rating</option>
                                        <option value="16">PESIMO</option>
                                        <option value="3">SUFICIENTE</option>
                                        <option value="2">BUENO</option>
                                        <option value="1">OPTIMO</option>

                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%" valign="top">OWNER
                                    </td>
                                <td width="60%">
                                    <table width="100%" cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input name="OwnerId" id="OwnerId" style="width: 100%; display: none; background: rgb(238, 238, 238) none repeat scroll 0% 0%;" tabindex="-1" type="text">
                                                    <input name="OwnerName" readonly="readonly" id="OwnerName" class="BoxDesign" style="width: 100%; background: rgb(238, 238, 238) none repeat scroll 0% 0%;" tabindex="-1" type="text">
                                                </td>
                                                <td width="30">&nbsp;<img src="/i/user.gif" style="cursor: pointer" onclick="CreateBox('/common/PopAccount.aspx?render=no&amp;textbox=OwnerName&amp;textbox2=OwnerId',event)" border="0">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%" valign="top">SALES REP
                                    </td>
                                <td width="60%">
                                    <table width="100%" cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input name="SalesPersonID" id="SalesPersonID" style="width: 100%; display: none; background: rgb(238, 238, 238) none repeat scroll 0% 0%;" tabindex="-1" type="text">
                                                    <input name="SalesPerson" readonly="readonly" id="SalesPerson" class="BoxDesign" style="width: 100%; background: rgb(238, 238, 238) none repeat scroll 0% 0%;" tabindex="-1" type="text">
                                                </td>
                                                <td width="30">&nbsp;<img src="/i/user.gif" style="cursor: pointer" onclick="CreateBox('/common/PopAccount.aspx?render=no&amp;sales=2&amp;textbox=SalesPerson&amp;textbox2=SalesPersonID',event)" border="0">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%" valign="top">CATEGORIES
                                    </td>
                                <td valign="top">

                                    <div class="ListCategory">
                                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                        </table>
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <span style="cursor: pointer; text-decoration: underline;" onclick="CreateBox('AddCategories.aspx?render=no',event,200,120)">Add category
                                        </span>
                                    <a id="RefreshRepCategories" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;RefreshRepCategories&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, true))" style="display: none;"></a>
                                </td>
                            </tr>
                            <tr>
                                <td width="40%" valign="top">Zone
                                    </td>
                                <td>
                                    <select name="dropZones" id="dropZones" class="BoxDesign">
                                        <option selected="selected" value="0">Select...</option>

                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" width="100%">COMPANY DESCRIPTION
                   
                    <br>
                    <textarea name="Description" id="Description" class="BoxDesign" style="height: 50px;"></textarea>
                </td>
            </tr>
            <tr>
                <td style="border-bottom: 1px solid #000000;" colspan="2">
                    <br>
                    <b>BILLING ADDRESS
                    </b>
                </td>
                <td style="border-bottom: 1px solid #000000;">
                    <br>
                    <b>SHIPPING ADDRESS
                    </b>&nbsp;&nbsp;(<span onclick="IndCopy()" class="linked">copy info from invoice</span>)
                </td>
            </tr>
            <tr>
                <td>
                    <table class="normal" width="100%" cellspacing="2" cellpadding="0" border="0" align="center">
                        <tbody>
                            <tr>
                                <td width="40%">ADDRESS
                            </td>
                                <td>
                                    <input name="Shipment_Address" id="Shipment_Address" class="BoxDesign" onkeypress="FirstUp(this,event)" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">CITY
                            </td>
                                <td>
                                    <input name="Shipment_City" id="Shipment_City" class="BoxDesign" onkeypress="FirstUp(this,event)" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">STATE / PROVINCE
                            </td>
                                <td>
                                    <input name="Shipment_StateProvince" id="Shipment_StateProvince" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">NATION
                            </td>
                                <td>
                                    <input name="Shipment_State" id="Shipment_State" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">ZIP CODE
                            </td>
                                <td>
                                    <input name="Shipment_Zip" id="Shipment_Zip" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">TELEPHONE
                            </td>
                                <td>
                                    <input name="Shipment_Phone" id="Shipment_Phone" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">FAX
                            </td>
                                <td>
                                    <input name="Shipment_Fax" id="Shipment_Fax" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">E-MAIL
                               
                                    <span id="regularExpressionValidator3" controltovalidate="Shipment_Email" errormessage="*" evaluationfunction="RegularExpressionValidatorEvaluateIsValid" validationexpression="(^\s*)(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}(\s*)$" style="color: Red; visibility: hidden;">*</span>
                                </td>
                                <td>
                                    <input name="Shipment_Email" id="Shipment_Email" class="BoxDesign" type="text">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td>&nbsp;
                </td>
                <td>
                    <table class="normal" width="100%" cellspacing="2" cellpadding="0" border="0" align="center">
                        <tbody>
                            <tr>
                                <td width="40%">ADDRESS
                            </td>
                                <td>
                                    <input name="Warehouse_Address" id="Warehouse_Address" class="BoxDesign" onkeypress="FirstUp(this,event)" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">CITY
                            </td>
                                <td>
                                    <input name="Warehouse_City" id="Warehouse_City" class="BoxDesign" onkeypress="FirstUp(this,event)" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">STATE / PROVINCE
                            </td>
                                <td>
                                    <input name="Warehouse_StateProvince" id="Warehouse_StateProvince" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">NATION
                            </td>
                                <td>
                                    <input name="Warehouse_State" id="Warehouse_State" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">ZIP CODE
                            </td>
                                <td>
                                    <input name="Warehouse_Zip" id="Warehouse_Zip" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">TELEPHONE
                            </td>
                                <td>
                                    <input name="Warehouse_Phone" id="Warehouse_Phone" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">FAX
                            </td>
                                <td>
                                    <input name="Warehouse_Fax" id="Warehouse_Fax" class="BoxDesign" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td width="40%">E-MAIL
                               
                                    <span id="regularExpressionValidator4" controltovalidate="Warehouse_Email" errormessage="*" evaluationfunction="RegularExpressionValidatorEvaluateIsValid" validationexpression="(^\s*)(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}(\s*)$" style="color: Red; visibility: hidden;">*</span>
                                </td>
                                <td>
                                    <input name="Warehouse_Email" id="Warehouse_Email" class="BoxDesign" type="text">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
            <tr>
                <td style="border-top: 1px solid #000000;" colspan="3" align="right">
                    <span id="groupauth">
                        <script>jsControlId = 'groups_';</script>
                        <script>
                            function mover(move) {
                                var inBox = getElement(jsControlId + "ListGroups");
                                var outBox = getElement(jsControlId + "ListDip");




                                if (move == 'addall' || move == 'add') {
                                    for (x = 0; x < (inBox.length); x++) {
                                        if (inBox.options[x].selected || move == 'addall') {
                                            with (outBox) {
                                                options[options.length] = new Option(inBox.options[x].text, inBox.options[x].value);
                                            }
                                            inBox.options[x] = null;
                                            x = -1;
                                        }
                                    }
                                    sortSelect(outBox);
                                }
                                if (move == 'removeall' || move == 'remove') {

                                    for (x = 0; x < (outBox.length); x++) {
                                        if (outBox.options[x].value == mygroup) continue;
                                        if (outBox.options[x].selected || move == 'removeall') {
                                            with (inBox) {
                                                options[options.length] = new Option(outBox.options[x].text, outBox.options[x].value);
                                            }
                                            outBox.options[x] = null;
                                            x = -1;
                                        }
                                    }
                                    sortSelect(inBox);
                                }

                                var GroupValuetxt = "|";
                                for (x = 0; x < (outBox.length); x++) {
                                    GroupValuetxt += outBox.options[x].value + "|";
                                }
                                document.getElementById(jsControlId + "GroupValue").value = GroupValuetxt;

                                return true;
                            }
                            function ValidatecompanyName() {

                            }
                            function compareText(option1, option2) {
                                return option1.text < option2.text ? -1 :
                                    option1.text > option2.text ? 1 : 0;
                            }

                            function sortSelect(select) {
                                if (!IE4plus) return;
                                var options = new Array(select.options.length);
                                for (var i = 0; i < options.length; i++)
                                    options[i] =
                                        new Option(
                                            select.options[i].text,
                                            select.options[i].value,
                                            select.options[i].defaultSelected,
                                            select.options[i].selected
                                        );
                                options.sort(compareText);
                                select.options.length = 0;
                                for (var i = 0; i < options.length; i++)
                                    select.options[i] = options[i];
                            }

</script>
                        <table id="groups_Groups_Table" style="width: 100%;" cellpadding="4" border="0" align="center">
                            <tbody>
                                <tr>
                                    <td style="width: 45%;">
                                        <div class="divautoform">Groups</div>
                                        <select size="7" name="groups:ListGroups" multiple="multiple" id="groups_ListGroups" class="listboxautoform">
                                        </select></td>
                                    <td style="width: 10%;" align="center">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <input name="groups:Btn_FwwAll" id="groups_Btn_FwwAll" onclick="mover('addall')" value=">>" class="btn" type="button">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input name="groups:Btn_Fww" id="groups_Btn_Fww" onclick="mover('add')" value=">" class="btn" type="button">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input name="groups:Btn_Rww" id="groups_Btn_Rww" onclick="mover('remove')" value="<" class="btn" type="button">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input name="groups:Btn_RwwAll" id="groups_Btn_RwwAll" onclick="mover('removeall')" value="<<" class="btn" type="button">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td style="width: 45%;">
                                        <div class="divautoform">Can viewed by:</div>
                                        <select size="7" name="groups:ListDip" multiple="multiple" id="groups_ListDip" class="listboxautoform">
                                            <option value="1">System Administrators</option>
                                            <option value="0">Global</option>

                                        </select><input name="groups:GroupValue" id="groups_GroupValue" value="|1|0|" type="hidden"></td>
                                </tr>
                            </tbody>
                        </table>

                    </span>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="border-top: 1px solid #000000; padding-top: 2px" height="18" align="right">

                    <asp:LinkButton ID="CancelCon" class="Save" runat="server">LinkButton</asp:LinkButton>
                    &nbsp;
           
                      <asp:LinkButton ID="SubmitCon" class="Save" runat="server">SAVE</asp:LinkButton>
                </td>
            </tr>
        </tbody>
    </table>

</asp:Content>
