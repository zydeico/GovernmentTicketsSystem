<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TESORERIA</title>
<style type="text/css">
<!--
.style1 {color: #000000}
.style3 {color: #000000; font-weight: bold; }
.style4 {color: #FF0000}
-->
</style>
</head>
<% 

rocko = session("usuario")





response.write(rocko)

if rocko = "tesoreria" or rocko = "oficialia" or rocko = "combuexpress" then
ok = 1
else
ok = 0
response.Redirect("tipovale.asp")
end if
 
response.write(ok)
%>
<body>
<table width="80%" border="0" align="center" cellpadding="2" cellspacing="2" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
  <tr>
    <td align="center" bgcolor="#CCCCCC">
    
    <%
	
	if rocko = "tesoreria" or rocko = "oficialia" or rocko = "combuexpress" then


	%>
    
    
    <span class="style3"><a href="facvale.asp" class="style1">
    
    
    
    FACTURAS/COSTO VALE</a> </span>
    
    
    
    <%end if%>
    </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">
    
    <%
	
	if rocko = "tesoreria" or rocko = "oficialia" then


	%>
    
    
    <strong><a href="teso2.asp" class="style1">REPORTES</a></strong>
    
    
    
    <%
	end if
	%>
    
    </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">
    
    <%
	
	if rocko = "tesoreria" or rocko = "oficialia" then


	%>
    
    <a href="tesfacd.asp">REPORTES POR FACTURA 
      <%
	end if
	%>
    </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">
    
    <%
	
	if rocko = "tesoreria" or rocko = "oficialia" or rocko = "combuexpress" then
ok = 1

	%>
    
    <a href="tesfacd2.asp">REPORTES POR FACTURA (detallada)</a>   
    
    
    <%end if%> </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">
    
    
    <%
	
	if rocko = "tesoreria" or rocko = "oficialia" or rocko = "combuexpress" then
ok = 1

	%>
    <a href="tesfacd3.asp">REPORTES POR AUTO</a> 
    
    
    <%end if%>
    </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC"><span class="style4"><a href="tesfacdapoyo.asp" class="style4">
      <%
	
	if rocko = "tesoreria" or rocko = "oficialia" then
ok = 1

	%>
      REPORTES VALES DE APOYO
      <%
	end if
	%>
    </a></span></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC"><a href="facficha.asp" class="style3">
      <%
	
	if rocko = "tesoreria" or rocko = "oficialia" then
ok = 1

	%>
      FACTURAS - FICHAS
      <%
	end if
	%>
    </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC"><a href="factures.asp">
      <%
	
	if rocko = "tesoreria" or rocko = "oficialia" then
ok = 1

	%>
      REPORTES
      <%
	end if
	%>
    </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC"><a href="http://apaseo.gob.mx/vales/valessinres2.asp">
      <%
	
	if rocko = "tesoreria" or rocko = "oficialia" OR rocko = "combuexpress" then
ok = 1

	%>
      FACTURAS DE VALES DE APOYO
      <%
	end if
	%>
    </a></td>
  </tr>
</table>
</body>
</html>
