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
    
    <p align="left">
      <%

car = request.form("ficha")
 SQL = "Select * from `combustible` where `factura` = '"&car&"' order by `depto` "
 
 SQL2 = "Select * from `usuarios` order by `direccion` "


					set rs = Server.CreateObject("ADODB.Recordset")
					set rs2 = Server.CreateObject("ADODB.Recordset")
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"




rs.open SQL, conn
rs2.open SQL2, conn







%>
      
      <strong>BITACORA DE GASOLINA      </strong><BR/>
      <strong>PRESIDENCIA MUNICIPAL DE APASEO EL ALTO, GTO.   </strong><br/>
      <strong>FACTURA</strong>: 
	<%response.write(rs("factura"))%>
	<table width="800" border="1" cellpadding="0" cellspacing="0" bgcolor="#003300">
      <tr>
        <td align="center"><span class="style1">DEPARTAMENTO</span></td>
        <td align="center"><span class="style1">Total</span></td>
      </tr>
    </table>
    <table width="800" border="1" cellspacing="0" cellpadding="0">
	<%
	ty = 5
	while not rs2.eof
	ty = ty + 1
	
	fecha = 0
	%>
      <tr>
        <td><%response.write(rs2("direccion"))%></td>
        <td><%
		while not rs.eof
	if rs("depto") = rs2("direccion") then
	
	

	tot = tot + rs("costov")
	
	else
	loco = 0
	end if
	
	
	rs.movenext
	wend
		
		
		
	'	
	if tot = "" then
		response.write("0")
		else
		
	response.write(tot)
	end if
	%></td>
      </tr>
	  
	  <%
	  tot = 0 
	  
	  rs.movefirst
	  rs2.movenext
	  wend
	  %>
      <tr>
        <td><strong>TOTAL</strong></td>
        <td><strong>=SUMA(B6:B<%response.Write(ty)%>
)</strong></td>
      </tr>
      <tr>
        <td><div align="center">
          <p>&nbsp;</p>
          <p>____________________________<br>
          Autoriz&oacute;<br>
          Ing. Nazario Mendoza Pati&ntilde;o<br>
            Oficial Mayor</p>
        </div></td>
        <td><div align="center">
          <p>&nbsp;</p>
          <p>____________________________<br>
          Elabor&oacute;<br>
          Haydee Sandoval P&eacute;rez<br>
            Auxiliar Administrativo C</p>
        </div></td>
      
      </tr>
    </table>
</div>
<label>
</label>
</form>
<p>&nbsp;</p>
</body>
</html>

