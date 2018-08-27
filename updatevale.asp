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


xxo = request.form("cambio")


cuenta = request.form("cuenta")
cuenta2 = request.form("cuenta2")
recibio = request.form("recibio")
responsable = request.form("responsable")
fecha = request.form("fecha")
depa = request.form("departamento")
cuenta = request.form("cuenta")

response.write(cuenta)
response.write(cuenta2)
response.write(recibio)
response.write(responsable)
response.write(fecha)
response.write(departamento)
response.write(cuenta)


xxo = request.querystring("fecha")

di = request.QueryString("dep")
c = request.form("cambio")



SQL5 = "UPDATE `vales` set `cuenta` = '"&request.form("cuenta")&"'  WHERE `id` = '"&c&"'"
 SQL = "update `vales` set `cuenta2` = '"&cuenta2&"' where `id` = '"&c&"'"
 SQL2 = "update `vales` set `recibio` = '"&recibio&"' where `id` = '"&c&"'"
 SQL3 = "update `vales` set `responsable` = '"&responsable&"' where `id` = '"&c&"'"
 SQL4 = "update `vales` set `fecha` = '"&fecha&"' where `id` = '"&c&"'"
 SQL5 = "update `vales` set `cuenta` = '"&cuenta&"' where `id` = '"&xxo&"'"
 SQL6 = "update `vales` set `departamento` = '"&departamento&"' where `id` = '"&c&"'"
 SQL7 = "update `vales` set `fe` = '"&fecha&"' where `id` = '"&c&"'"
 SQL8 = "update `vales` set `depto` = '"&depa&"' where `id` = '"&c&"'"
 SQL9 = "update `vales` set `tipo` = '"&tipo&"' where `id` = '"&c&"'"

 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"

Set rs = conn.Execute(SQL)
Set rs3 = conn.Execute(SQL3)
Set rs4 = conn.Execute(SQL4)
Set rs6 = conn.Execute(SQL6)
Set rs7 = conn.Execute(SQL7)
Set rs8 = conn.Execute(SQL8)



response.Redirect("reportes.asp")
response.Write("Cambios hechos")
response.redirect("")
set conn=nothing
%>
</body>
</html>
