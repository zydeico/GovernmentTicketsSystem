<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<%

user = session("usuario")
	 SQL = "Select * from `usuarios` where `usuario` = '"&user&"'"
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
while not rs.eof
if rs("admin") = 1 then

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>alta</title>
</head>

<body>
<%


art = request.form("articulo")

SQL = "insert into articulos(nombre) values ('"&art&"')"
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
  

 Set rs = conn.Execute(SQL)
 

response.Redirect("papeleria.asp")

%>
<table width="100%" border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">></td>
  </tr>
</table>
</body>
<%
session("admin") = 1
end if
rs.movenext
wend
set conn=nothing
	
	%>
</html>