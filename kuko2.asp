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
		 

resto = 0
v = request.form("vehiculo")
k = request.form("kilometraje")
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



fe = por&"/"&pr2&"/"&pr3s
de = request.form("departamento")
clav = "aa"&request.form("hora")&pus2&pus3

com = request.form("comb")

Gasolina = "Gasolina"
Diesel = "Diesel"







fech=request.form("fecha")
depto=request.form("departamento")



  Set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
  


kido = request.form("litros2")
ipo = request.form("comb")
fol = request.form("vale2")
fac = request.form("factura")
fe = request.form("fecha")
costo = request.form("costo")
po = 1
SQL = "insert into combustible(vehiculo,folio,factura,costov,lts,lts1,fe,re,valido)values('"&v&"','"&fol&"','"&fac&"','"&costo&"','"&lit&"','"&kido&"','"&fe&"','"&res&"','"&po&"')"
Set rs = conn.Execute(SQL)

SQL4 = "Select * from `combustible` order by `id` desc limit 1"
Set rs4 = conn.Execute(SQL4)

 while not rs4.eof
upo = rs4("id")
rs4.movenext
wend

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