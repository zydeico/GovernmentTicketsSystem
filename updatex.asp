<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%


xxo = request.form("cambio")


vehiculo = request.form("vehiculo")
litros = request.form("litros")
km = request.form("km")
lugar = request.form("lugar")
asunto = request.form("asunto")
responsable = request.form("responsable")
fecha = request.form("fecha")
depa = request.form("departamento")
tipo = request.form("tipo")

response.write(vehiculo)
response.write(litros)
response.write(km)
response.write(lugar)
response.write(asunto)
response.write(responsable)
response.write(fecha)
response.write(depa)
response.write(tipo)

xxo = request.querystring("fecha")

di = request.QueryString("dep")
c = request.form("cambio")



 SQL5 = "UPDATE `combustible` set `lts` = '"&request.form("litros")&"'  "
 SQL = "update `combustible` set `vehiculo` = '"&vehiculo&"' "
 SQL2 = "update `combustible` set `kmactuales` = '"&km&"' "
 SQL3 = "update `combustible` set `lugarvisita` = '"&lugar&"' "
 SQL4 = "update `combustible` set `asunto` = '"&asunto&"' "
 'SQL5 = "update `combustible` set `lts` = '"&litros&"' "
 SQL6 = "update `combustible` set `re` = '"&responsable&"' "
 SQL7 = "update `combustible` set `fe` = '"&fecha&"' "
 SQL8 = "update `combustible` set `depto` = '"&depa&"' "
 SQL9 = "update `combustible` set `tipo` = '"&tipo&"' "
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"


Set rs = conn.Execute(SQL)
Set rs2 = conn.Execute(SQL2)
Set rs3 = conn.Execute(SQL3)
Set rs4 = conn.Execute(SQL4)
Set rs5 = conn.Execute(SQL5)
Set rs6 = conn.Execute(SQL6)
Set rs7 = conn.Execute(SQL7)
Set rs8 = conn.Execute(SQL8)
Set rs9 = conn.Execute(SQL9)


'response.Redirect("reportes.asp")
response.Write("Cambios hechos")
response.redirect("reportesdepa.asp?fecha="&xxo&"&dep="&di)
set conn=nothing
%>
</body>
</html>
