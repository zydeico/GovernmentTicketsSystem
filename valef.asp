<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% 

rocko = session("usuario")





response.write(rocko)

if rocko = "tesoreria" or rocko = "OficialiaMayor"then
ok = 1
else
ok = 0
response.Redirect("tipovale.asp")
end if
 
response.write(ok)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style3 {	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style9 {font-family: Arial, Helvetica, sans-serif; font-size: 25px; font-weight: bold; }
-->
</style>
</head>

<body>
<p>
  <%










xxo = request.form("folio")

di = request.form("factura")
c = request.form("costo")
liti = request.form("litros")



 SQL = "UPDATE `combustible` SET `factura` = '"&di&"', `costov` = '"&c&"', `lts1` = '"&liti&"' WHERE `id` = '"&xxo&"' LIMIT 1"

 
 
SQL2 ="SELECT * FROM `combustible` WHERE `id` = '"&xxo&"'"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"

Set rs = conn.Execute(SQL)



Set rs2 = conn.Execute(SQL2)

'response.Redirect("reportes.asp")
response.Write("Cambios hechos")
'response.redirect("")
set conn=nothing
%>
</p>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
  <tr>
    <td  align="left" valign="bottom">VEHICULO</td>
    <td align="left" valign="bottom"><%response.write(rs2("vehiculo"))%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">KILOMETRAJE</td>
	<td align="left" valign="bottom"><%response.write(rs2("kmactuales"))%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">LUGAR A VISITAR </td>
	<td align="left" valign="bottom"><%response.write(rs2("lugarvisita"))%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">ASUNTO</td>
	<td align="left" valign="bottom"><%response.write(rs2("asunto"))%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">LITROS</td>
					<td align="left" valign="bottom"><%response.write(rs2("lts"))%>
de
  <%response.write(rs2("tipo"))
					
					if rs2("tipo") = "Gasolina" then
					response.Write(" Magna")
					end if
					
					
					
					%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">RESPONSABLE</td>
	<td align="left" valign="bottom"><%response.write(rs2("re"))%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">FECHA</td>
	<td align="left" valign="bottom"><%response.write(rs2("fe"))%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">DEPARTAMENTO</td>
	<td align="left" valign="bottom"><%response.write(rs2("depto"))%></td>
  </tr>
  <tr>
    <td  align="left" valign="bottom">FOLIO</td>
    <td align="left" valign="bottom"><%response.write(rs2("id"))
	ioio = rs2("id")
	response.Redirect("facvale.asp?folio="&ioio)
	%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">CLAVE</td>
	<td align="left" valign="bottom"><%response.write(rs2("clave"))%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">FACTURA</td>
    <td align="left" valign="bottom"><%response.write(rs2("factura"))%></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">COSTO</td>
    <td align="left" valign="bottom">$
      <%response.write(rs2("costov"))%></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
