<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<%Response.ContentType = "application/vnd.ms-excel"%>

<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Reportes por Auto</title>
<style type="text/css">
<!--
.style1 {color: #000000}
.style2 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<div align="center">
  <p>OFICI<span class="style1">AL&Iacute;A MAYO</span>R</p>
  <p>Reporte de kilometros recorridos de los ultimos 10 vales de combustible
    <%
xxo = request.form("vehiculo")


SQL = "Select * from `combustible` where  `fe` like '%11/2008' and `depto` like '%bomber%' or `fe` like '%12/2008' and `depto` like '%bomber%' order by `id` desc"
'SQL = "Select * from `combustible` where `vehiculo` LIKE '%"&xxo&"%'  order by `id` desc limit 30"
 SQL2 = "Select * from `precio`"

  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
Set rs2 = conn.Execute(SQL2)

total = 0
total2 = 0
while not rs2.eof
precio = rs2("precio")
precio2 = rs2("preciodiesel")
Gasolina = "Gasolina"
rs2.movenext
wend 

%>
  </p>
</div>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"><strong>Folio</strong></td>
    <td align="center"><strong>Unidad</strong></td>
    <td align="center"><strong>Km Salida </strong></td>
    <td align="center"><strong>Km Recorridos </strong></td>
    <td align="center"><strong>Litros</strong></td>
    <td align="center"><strong>Departamento</strong></td>
    <td align="center"><strong>Fecha</strong></td>
    <td align="center"><strong>Clave</strong></td>
    <td align="center"><strong>Tipo</strong></td>
    <td align="center"><strong>Km/Litro</strong></td>
  </tr>
  <tr><%while not rs.eof
  
  if ree = 0 then
  color = 1
  ree = 1
  else
  color = 2
  ree = 0
  end if%>
  
  
    <td align="center" bgcolor="#FFFFFF"><span class="style<%response.Write(color)%>"><%
	total = total + rs("lts")
	
	response.write(rs("id"))%></td>
    <td align="center"><span class="style<%response.Write(color)%>"><a href="repauto.asp?fecha=<%response.write(xxo)%>&auto=<%response.write(rs("vehiculo"))%>" class="style<%response.Write(color)%>"><%response.write(rs("vehiculo"))%></a></td>
    <td align="center"><span class="style<%response.Write(color)%>"><%response.write(rs("kmactuales"))%></span></td>
    <td align="center"><span class="style<%response.Write(color)%>"><%
	ip = rs("kmactuales")
	up = yu - ip + 1
	
	if res >= 1 then
	response.write(up)
	end if
	
	yu = rs("kmactuales")
	
	%></span></td>
    <td align="center"><span class="style<%response.Write(color)%>"><%response.write(rs("lts"))%></span></td>
    <td align="center"><span class="style<%response.Write(color)%>"><%response.write(rs("depto"))%></span></td>
    <td align="center"><span class="style<%response.Write(color)%>"><%
	response.write(rs("fe"))
	%></td>
    <td align="center"><span class="style<%response.Write(color)%>"><%response.write(rs("clave"))%></span></td>
    <td align="center"><span class="style<%response.Write(color)%>"><%response.write(rs("tipo"))%></span></td>
    <td align="center"><span class="style<%response.Write(color)%>"><%
	
	
	ipp = rs("lts")
	yyt = (up/ipp)
	if res >= 1 then
	trucha = trucha + yyt
	yytt = Round (yyt,2)
	response.write(yytt)
	end if
	res = res+1
	%></span></td>
  </tr>

<%

           rs.movenext
	 	wend

		set conn=nothing
%>
</table>
<table width="100%" border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr>
    <td width="600">&nbsp;</td>
    <td width="150" align="right"><strong>Promedio</strong></td>
    <td width="60" align="center"><%
	
	kilo = res - 1
	if res > 1 then
	kung = trucha/kilo
	end if
	kuni = Round (kung,2)
	response.write(kuni)
	
	%></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
