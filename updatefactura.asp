<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%


'xxo = request.form("cambio")


d = request.form("d")
c = request.form("c")



 SQL = "update `combustible` set `factura` = '"&d&"' where `factura` = '"&c&"'"
 

 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"

Set rs = conn.Execute(SQL)




'response.Redirect("reportes.asp")
response.Write("Cambios hechos")
'response.redirect("")
set conn=nothing
%>
</body>
</html>
