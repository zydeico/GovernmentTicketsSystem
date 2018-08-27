<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("usuario") = ""  then

response.redirect "index.asp"


rocko = session("usuario")



 if rocko = "bomberos" then
		 response.Redirect("tipovale.asp")
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

depto=request.form("departamento")
responsable = request.form("responsable")

recibio = request.form("recibio")
cuenta=request.form("cuenta")
cuenta2=request.form("cuenta2")

arti1 = request.form("art1")
arti2 = request.form("art2")
arti3 = request.form("art3")
arti4 = request.form("art4")
arti5 = request.form("art5")
arti6 = request.form("art6")

if arti2 = "" then
arti2 = "--"
end if
if arti3 = "" then
arti3="--"
end if
if arti4 = "" then
arti4 = "--"
end if
if arti5 = "" then
arti5="--"
end if
if arti6 = "" then
arti6="--"
end if




can1= request.form("can1")
can2= request.form("can2")
can3= request.form("can3")
can4= request.form("can4")
can5= request.form("can5")
can6= request.form("can6")

if can2 = "" then
can2 = "--"
end if
if can3 = "" then
can3="--"
end if
if can4 = "" then
can4 = "--"
end if
if can5 = "" then
can5="--"
end if
if can6 = "" then
can6="--"
end if

cantidad = can1&","&can2&","&can3&","&can4&","&can5&","&can6
concepto = arti1&","&arti2&","&arti3&","&arti4&","&arti5&","&arti6

ko2 = date()
por = day(ko2)
pr2= month(ko2)
pr3= year(ko2)

if por < 10 then
por = "0"&por
end if
if pr2 < 10 then
pr2 = "0"&pr2
end if

fe = por&"/"&pr2&"/"&pr3


negocio = request.form("nego")

SQL4 = "Select * from `vales` order by `id` desc limit 1"
SQL = "insert into vales(fecha,depto,responsable,recibio,cuenta,cuenta2,cantidad,concepto,negocio)values('"&fe&"','"&depto&"','"&responsable&"','"&recibio&"','"&cuenta&"','"&cuenta2&"','"&cantidad&"','"&concepto&"','"&negocio&"')"
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
  

 Set rs = conn.Execute(SQL)
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
    <td align="center">
    
     
       
	Su clave para recoger el vale es: <%response.write(upo)%>
	
	
	
    </td>
  </tr>
</table>
</body>
</html>