<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<%Response.ContentType = "application/vnd.ms-excel"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Vales</title>
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>

<body>

<form id="form1" name="form1" method="post" action="">
<div align="center">
    
    <p>
      <%

car = request.form("vehiculo")
 SQL = "Select * from `combustible` where `vehiculo` like '%"&car&"%'"
SQL2 = "Select * from `combustible` where `vehiculo` like '%"&car&"%'"
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)

Set rs2 = conn.Execute(SQL2)






%>
      
      <strong>BITACORA DE GASOLINA      </strong><BR/>
      <strong>PRESIDENCIA MUNICIPAL DE APASEO EL ALTO, GTO.   </strong><br/>
	
      <strong>Depto</strong> 
      <%
	while not rs2.eof
	o = o + 1
	if o < 2 then
	response.write(rs2("depto"))
	end if
	rs2.movenext
	wend
	%>
	<br/>
	<strong>VEHICULO</strong>: 
	<%response.write(car)%>
	<table width="800" border="1" cellpadding="0" cellspacing="0" bgcolor="#003300">
      <tr>
        <td align="center"><span class="style1">FECHA</span></td>
        <td align="center"><span class="style1">DESTINO</span></td>
        <td align="center"><span class="style1">LITROS</span></td>
        <td align="center"><span class="style1">NO. VALE </span></td>
        <td align="center"><span class="style1">FACTURA</span></td>
        <td align="center"><span class="style1">IMPORTE</span></td>
      </tr>
    </table>
    <table width="800" border="1" cellspacing="0" cellpadding="0">
	<%
	u = 6
	while not rs.eof
	u = u + 1
	
	
	
	
	%>
      <tr>
        <td><%response.write(rs("fe"))%></td>
        <td><%response.write(rs("lugarvisita"))%></td>
        <td><%response.write(rs("lts"))%></td>
        <td><%response.write(rs("id"))%></td>
        <td align="center"><%response.write(rs("factura"))%></td>
        <td align="center"><%response.write(rs("costov"))%></td>
      </tr>
	   <%
	  rs.movenext
	wend
	  %>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right"><strong>TOTAL</strong></td>
        <td align="center"><strong>=SUMA(F7:F<%response.Write(u)%>
)</strong></td>
      </tr>
    </table>
</div>
<label>
</label>
</form>
<p>&nbsp;</p>
</body>
</html>

