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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>alta</title>
</head>

<body>
<%

 ko = time()
		 
ko2 = date()
por = day(ko2)
pr2= month(ko2)
pr3= year(ko2)
pus= hour(ko)
pus2 = minute(ko)
pus3 = second(ko)
resto = 0
cuenta = request.form("cuenta")
v = request.form("vehiculo")
k = request.form("kilometraje")
l = request.form("lugar")
res=request.form("responsable")
if por < 10 then
por = 0&por
end if
if pr2 <10 then
pr2 = 0&pr2
end if
fe = por&"/"&pr2&"/"&pr3
de = request.form("departamento")
clav = "aa"&request.form("hora")&pus2&pus3

nego = request.form("nego")
serv = request.form("serv")

SQL4 = "Select * from `fichas`"
SQL = "insert into fichas(vehiculo,re,fe,depto,clave,asunto,lugar,cuenta)values('"&v&"','"&res&"','"&fe&"','"&de&"','"&clav&"','"&serv&"','"&nego&"','"&cuenta&"')"
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
  

 Set rs4 = conn.Execute(SQL4)
 
 while not rs4.eof 
 
 upo = rs4("id")
 
 
 rs4.movenext
 wend
 
 upo = upo + 1
 
 
 
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
    <td align="center">Su clave para recoger su ficha es: <%response.write(upo)%></td>
  </tr>
</table>
</body>
</html>