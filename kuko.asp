<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("usuario") = ""  then

response.redirect "index.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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

k = request.form("kilometraje")

'dim ytyt as integer
'dim tyu as integer
tyu = pus&pus2

response.Write("horaa"&tyu&"-----")
ytyt = 1530
limiteh = 15
limitem = 30
response.Write("-----"&tyu&"------Fuera de horario------")





l = request.form("lugar")
a = request.form("asunto")
lit=request.form("litros")



res=request.form("responsable")


upper = request.Form("fin")



fe = por&"/"&pr2&"/"&pr3
de = request.form("departamento")
clav = "aa"&request.form("hora")&pus2&pus3

com = request.form("comb")

Gasolina = "Gasolina"
Diesel = "Diesel"







fech=request.form("fecha")
depto=request.form("departamento")

'SQL3 = "Select * from `usuarios` where `direccion` = '"&de&"'"
'SQL2 = "Select * from `precio`"
'SQL4 = "Select * from `combustible`"
'SQL5 = "Select * from `combustible` where `vehiculo` = '"&v&"' order by `id` desc"
  Set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
  

  
'  Set rs4 = conn.Execute(SQL4)
' Set rs5 = conn.Execute(SQL5)
'Set rs2 = conn.Execute(SQL2)
'Set rs3 = conn.Execute(SQL3)





'response.Write(rs5("vehiculo"))
response.Write("//////")
'response.Write(k)
response.Write("//////")
'response.Write(rs5("kmactuales"))
response.Write("//////")
'po = rs5("kmactuales")
'if k = po then
'response.Write("///  K es igual  ///")
'end if
response.Write(po)
response.Write("//////")

'i = k - po












'ki = rs3("bomb")


'ki2 = rs3("bomb2")






kido = request.form("litros")
ipo = request.form("comb")







upo = 0
'while not rs4.eof
'upo = upo + 1
'rs4.movenext
'wend

upo = upo + 155
'while not rs2.eof
'if com = Gasolina then
'ti = rs2("precio")
'else
'ti = rs2("preciodiesel")
'end if
'rs2.movenext
'wend
fe = request.form("fecha")
po = 1
SQL = "insert into combustible(vehiculo,kmactuales,lugarvisita,asunto,lts,re,fe,depto,clave,tipo,precio,valido)values('"&v&"','"&k&"','"&l&"','"&a&"','"&lit&"','"&res&"','"&fe&"','"&de&"','"&clav&"','"&com&"','"&ti&"','"&po&"')"
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
    <td align="center">Su clave para recoger el vale es: <%response.write(upo)%></td>
  </tr>
</table>
</body>
</html>