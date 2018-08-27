<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%


'xxo = request.form("cambio")


vehiculo = request.form("vehiculo")
lugar = request.form("lugar")
asunto = request.form("asunto")
responsable = request.form("responsable")
fecha = request.form("fecha")
depa = request.form("departamento")
cuenta = request.form("cuenta")




xxo = request.querystring("fecha")

di = request.QueryString("dep")
c = request.form("cambio")



 SQL = "update `fichas` set `vehiculo` = '"&vehiculo&"' where `id` = '"&c&"'"
 SQL3 = "update `fichas` set `lugar` = '"&lugar&"' where `id` = '"&c&"'"
 SQL4 = "update `fichas` set `asunto` = '"&asunto&"' where `id` = '"&c&"'"
 SQL6 = "update `fichas` set `re` = '"&responsable&"' where `id` = '"&c&"'"
 SQL7 = "update `fichas` set `fe` = '"&fecha&"' where `id` = '"&c&"'"
 SQL8 = "update `fichas` set `depto` = '"&depa&"' where `id` = '"&c&"'"
 SQL9 = "update `fichas` set `cuenta` = '"&cuenta&"' where `id` = '"&c&"'"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"

Set rs = conn.Execute(SQL)
Set rs3 = conn.Execute(SQL3)
Set rs4 = conn.Execute(SQL4)
Set rs6 = conn.Execute(SQL6)
Set rs7 = conn.Execute(SQL7)
Set rs8 = conn.Execute(SQL8)
Set rs9 = conn.Execute(SQL9)



'response.Redirect("reportes.asp")
response.Write("Cambios hechos")
'response.redirect("")
set conn=nothing
%>
</body>
</html>
