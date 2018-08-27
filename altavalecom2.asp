<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("usuario") = ""  then

response.redirect "index.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>alta</title>
</head>

<body>
<%

 ko = time()
		 dim pus
		 dim pus2
		 dim pus3
		 dim limiteh
		 dim limitem
		 
ko2 = date()
por = day(ko2)
pr2= month(ko2)
pr3= year(ko2)
pus= hour(ko)
pus2 = minute(ko)
pus3 = second(ko)
resto = 0
v = request.form("vehiculo")
comision = request.form("comision")
k = request.form("kilometraje")


cuenta = request.form("cuenta")
'dim ytyt as integer
'dim tyu as integer
tyu = pus&pus2

response.Write("horaa"&tyu&"-----")
ytyt = 1530
limiteh = 15
limitem = 30
response.Write("-----"&tyu&"------Fuera de horario------")
if pus > limiteh then
if pus2 > limitem then
response.Write("-----"&tyu&"------Fuera de horario------")
'response.Redirect("fueradehorario.asp")
end if
end if

if k = 0 then
response.Redirect("novalido.asp")
end if


l = request.form("lugar")
a = request.form("asunto")
lit=request.form("litros")


if lit = 0 then
response.Redirect("combustible.asp")
end if
res=request.form("responsable")


upper = request.Form("fin")

if upper = 1 then
por = por + 1

end if
if upper = 2 then
por = por + 2
end if
if upper = 3 then
por = por + 3
end if

if por < 10 then
por = "0"&por
end if
if pr2 < 10 then
pr2 = "0"&pr2
end if

fe = request.form("fechas")
de = request.form("departamento")
clav = "aa"&request.form("hora")&pus2&pus3

com = request.form("comb")

Gasolina = "Gasolina"
Diesel = "Diesel"







fech=request.form("fecha")
depto=request.form("departamento")

SQL3 = "Select * from `usuarios` where `direccion` = '"&de&"'"
SQL2 = "Select * from `precio`"
SQL4 = "Select * from `combustible` order by `id` desc limit 1"
SQL5 = "Select * from `combustible` where `vehiculo` = '"&v&"' and `valido` = '0' order by `id` desc limit 1"

  Set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
  

  
Set rs4 = conn.Execute(SQL4)
Set rs5 = conn.Execute(SQL5)
Set rs2 = conn.Execute(SQL2)
Set rs3 = conn.Execute(SQL3)









upo = 0
while not rs4.eof
upo = rs4("id")
rs4.movenext
wend

upo = upo + 1
while not rs2.eof
if com = Gasolina then
ti = rs2("precio")
else
ti = rs2("preciodiesel")
end if
rs2.movenext
wend


SQL = "insert into combustible(vehiculo,kmactuales,comision,lugarvisita,asunto,lts,re,fe,depto,clave,tipo,precio,cuenta)values('"&v&"','"&k&"','"&comision&"','"&l&"','"&a&"','"&lit&"','"&res&"','"&fe&"','"&de&"','"&clav&"','"&com&"','"&ti&"','"&cuenta&"')"
Set rs = conn.Execute(SQL)


'tp = ti * lit
'popo = rs3("pres2")

'pupu = popo + tp

'SQL4 = "UPDATE usuarios set `pres2` = '"&pupu&"' where `usuario` = '"&session("usuario")&"'"
 
'Set rs4 = conn.Execute(SQL4)
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
    <td align="center"><a href="tipovale.asp" class="style4">Su clave para recoger el vale es:</a> <%response.write(upo)%></td>
  </tr>
</table>
</body>
</html>