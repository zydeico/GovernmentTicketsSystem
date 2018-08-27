
<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Vales</title>
<style type="text/css">
<!--
.style1 {color: #000000}
-->
</style>
</head>

<body>
<div align="center">
  <p>OFICI<span class="style1">AL&Iacute;A MAYO</span>R</p>
  <p>Reporte de vales de combustible del d&iacute;a     
    <%
xxo = request.form("dia")&"/"&request.form("mes")&"/"&request.form("anho")
response.Write(xxo)

 SQL = "Select * from `combustible` where `fe` = '"&xxo&"'  order by tipo asc, depto asc, id asc"
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
total = 0
%>
  </p>
</div>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
   <td align="center"><strong>No</strong></td>
    <td align="center"><strong>Folio</strong></td>
    <td align="center"><strong>Unidad</strong></td>
    <td align="center"><strong>Km Salida </strong></td>
    <td align="center"><strong>Departamento</strong></td>
    <td align="center"><strong>Litros</strong></td>
    <td align="center"><strong>Clave</strong></td>
    <td align="center"><strong>Tipo</strong></td>
    <td align="center"><strong>Factura</strong></td>
  </tr>
  <tr><%
  popof = 0
  while not rs.eof
  
  popof = popof + 1
  %>
  
  <td align="center"><%response.write(popof)%></td>
    <td align="center"><%
	total = total + rs("lts")
	
	response.write(rs("id"))%>      </td><td align="center"><%response.write(rs("vehiculo"))%></td>
    <td align="center"><%response.write(rs("kmactuales"))%></td>
    <td align="center"><a href="reportesdepa.asp?dep=<%response.write(rs("depto"))%>&fecha=<%response.write(xxo)%>" class="style1"><%response.write(rs("depto"))%></a></td>
    <td align="center"><%response.write(rs("lts"))%></td>
    <td align="center"><%response.write(rs("clave"))%></td>
    <td align="center"><%response.write(rs("tipo"))%></td>
    <td align="center"><%
	
	if rs("factura") = ""  then
	response.write("0")
	else 
	response.write(rs("factura"))
	
	end if
	
	%></td>
  </tr>

<%

           rs.movenext
	 	wend

		set conn=nothing
%>

  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="right"><strong>Litros totales:</strong> </td>
    <td align="center"><strong><%response.write(total)%></strong> </td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
