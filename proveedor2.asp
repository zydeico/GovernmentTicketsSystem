<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("usuario") = ""  then

response.redirect "index.asp"


rocko = session("usuario")



 if rocko = "bomberos" then
		 response.Redirect("combustible.asp")
 end if
end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>alta</title>
</head>

<body>
<%

 


nombre = request.form("nombre")
tipo = request.form("tipo")


SQL = "insert into proveedores(nombre,tipo)values('"&nombre&"','"&tipo&"')"
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
  

 Set rs = conn.Execute(SQL)
 
 

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
    <td align="center">Listo</td>
  </tr>
</table>
</body>
</html>