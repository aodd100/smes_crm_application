<%@ Register TagPrefix="twc" Namespace="IRSLCRM.Webcontrol" Assembly="IRSLCRM.Webcontrol"%>
<%@ Register TagPrefix="twc" Namespace="IRSLCRM.Webcontrol" Assembly="IRSLCRM.Webcontrol"%>
<%@ Page language="c#" Trace="false" Codebehind="htmlreport.aspx.cs" Inherits="IRSLCRM.report.HTMLReport" AutoEventWireup="false"%>
<script>
function printpage()
{
	window.blur();
	if (window.print)
		{window.print()}
	else
		{alert('<%=alertMsg%>');}
	window.close();
}
</script>

