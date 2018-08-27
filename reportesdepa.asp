<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Vales</title>
<style type="text/css">
<!--
.style1 {color: #000000}
-->
</style>
</head>

<body>

<form id="form1" name="form1" method="post" action="">
<div align="center">
  <p><a href="tipovale.asp" class="style4">OFICIAL&Iacute;A MAYOR</a></p>
  <p>Reporte de vales de combustible del d&iacute;a     
    <%
xxo = request.querystring("fecha")
response.Write(xxo)
di = request.QueryString("dep")
 SQL = "Select * from `combustible` where `fe` = '"&xxo&"' and `depto` = '"&di&"'  order by id asc, depto asc"
 SQL2 = "Select * from `precio`"
 SQL3 = "Select * from `usuarios` where `direccion` = '"&di&"'"
 SQL4 = "Select * from `combustible` where `depto` = '"&di&"'"
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
Set rs2 = conn.Execute(SQL2)
Set rs3 = conn.Execute(SQL3)
Set rs4 = conn.Execute(SQL4)
total = 0
total2 = 0
total3 = 0






%>
  </p>
</div>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"><strong>Folio</strong></td>
    <td align="center"><strong>Unidad</strong></td>
    <td align="center"><strong>Km Salida </strong></td>
    <td align="center"><strong>Departamento</strong></td>
    <td align="center"><strong>Litros</strong></td>
    <td align="center"><strong>Precio/lt</strong></td>
    <td align="center"><strong>Clave</strong></td>
    <td align="center"><strong>Tipo</strong></td>
  </tr>
  <tr><%while not rs.eof%>
    <td align="center"><%
	total = total + rs("lts")
	
	
	


	
	%>   
	<a href="consultavalesolo.asp?fecha=<%response.write(xxo)%>&auto=<%response.write(rs("id"))%>&dep=<%response.write(di)%>" class="style1"><%response.write(rs("id"))%></a>
    </td><td align="center"><a href="repauto.asp?fecha=<%response.write(xxo)%>&auto=<%response.write(rs("vehiculo"))%>" class="style1"><%response.write(rs("vehiculo"))%></a></td>
    <td align="center"><%response.write(rs("kmactuales"))%></td>
    <td align="center"><%response.write(rs("depto"))%></td>
    <td align="center"><label>
    <%response.write(rs("lts"))%>
    </label>
    </td>
    <td align="center"><%
	
	response.write(rs("precio"))
	if rs("precio") = "" then
	tt = tt
	else
	tt = rs("precio")*rs("lts")
	end if
	total2 = total2 + tt
	
	
	%></td>
    <td align="center"><%response.write(rs("clave"))%></td>
    <td align="center"><%response.write(rs("tipo"))%></td>
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
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="right"><strong>Costo total:</strong></td>
    <td align="center"><strong>
      $
      
    </strong></td>
    <td align="right"><strong>Presupuesto Total:</strong></td>
    <td align="right"><strong>$</strong></td>
    <td align="right"><strong>
      <%response.write(rs3("pres"))%>
    </strong></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="right">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="right"><strong>Presupuesto Restante:</strong></td>
    <td align="right"><strong>$</strong></td>
    <td align="right"><strong>
      
    </strong></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="right">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="right">&nbsp;</td>
    <td align="right">&nbsp;</td>
    <td align="right"><strong>
    
    </strong></td>
  </tr>
</table>
<label>
<div align="center">
  <input type="submit" name="Submit" value="CAMBIAR" />
</div>
</label>
</form>
<p>&nbsp;</p>
</body>
</html>

