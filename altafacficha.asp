<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% 

rocko = session("usuario")





response.write(rocko)

if rocko = "Tesoreria" or rocko = "OficialiaMayor"then
ok = 1
else
ok = 0
response.Redirect("tipovale.asp")
end if
 
response.write(ok)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style3 {	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style9 {font-family: Arial, Helvetica, sans-serif; font-size: 25px; font-weight: bold; }
-->
</style>
</head>

<body>
<p>
  <%










xxo = request.form("folio")

di = request.form("factura")
c = request.form("costo")
disque = request.form("factura2")




 SQL = "UPDATE `fichas` SET `factura` = '"&di&"', `costo` = '"&c&"', `factura2` = '"&disque&"' WHERE `id` = '"&xxo&"' LIMIT 1"

 
 
 
 Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"

Set rs = conn.Execute(SQL)



'response.Redirect("reportes.asp")
response.Write("Se han realizado los cambios")
response.Redirect("facficha.asp?folio="&xxo)
'response.redirect("")
set conn=nothing
%>

 
<p>&nbsp;</p>
</body>
</html>
