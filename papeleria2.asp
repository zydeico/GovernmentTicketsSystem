
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<% if session("usuario") = ""  then

response.redirect "index.asp"

end if

if session("usuario") = "combuexpress"  then

response.redirect "teso.asp"

end if




		  rocko = session("usuario")



 


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<p>
  <%


art1=request.form("articulo1")&","&request.form("articulo2")&","&request.form("articulo3")&","&request.form("articulo4")&","&request.form("articulo5")&","&request.form("articulo6")&","&request.form("articulo7")&","&request.form("articulo8")&","&request.form("articulo9")&","&request.form("articulo10")


art2=request.form("articulo11")&","&request.form("articulo12")&","&request.form("articulo13")&","&request.form("articulo14")&","&request.form("articulo15")&","&request.form("articulo16")&","&request.form("articulo17")&","&request.form("articulo18")&","&request.form("articulo19")&","&request.form("articulo20")

art3=request.form("articulo21")&","&request.form("articulo22")&","&request.form("articulo23")&","&request.form("articulo24")&","&request.form("articulo25")&","&request.form("articulo26")&","&request.form("articulo27")&","&request.form("articulo28")&","&request.form("articulo29")&","&request.form("articulo30")

cant1=request.form("cantidad1")&","&request.form("cantidad2")&","&request.form("cantidad3")&","&request.form("cantidad4")&","&request.form("cantidad5")&","&request.form("cantidad6")&","&request.form("cantidad7")&","&request.form("cantidad8")&","&request.form("cantidad9")&","&request.form("cantidad10")&","&request.form("cantidad11")&","&request.form("cantidad12")&","&request.form("cantidad13")&","&request.form("cantidad14")&","&request.form("cantidad15")&","&request.form("cantidad16")&","&request.form("cantidad17")&","&request.form("cantidad18")&","&request.form("cantidad19")&","&request.form("cantidad20")&","&request.form("cantidad21")&","&request.form("cantidad22")&","&request.form("cantidad23")&","&request.form("cantidad24")&","&request.form("cantidad25")&","&request.form("cantidad26")&","&request.form("cantidad27")&","&request.form("cantidad28")&","&request.form("cantidad29")&","&request.form("cantidad30")

art4 = art1&","&art2&","&art3

response.write (art1)
response.write ("///////////////")
response.write (art2)
response.write ("///////////////")
response.write (art3)
response.write ("///////////////")
response.write (cant1)




 user = session("usuario")
response.write (user)


SQL2 = "Select * from `usuarios` where `usuario` = '"&user&"'"

Set conn2 = Server.CreateObject("ADODB.Connection")
conn2.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"


Set rs2 = conn2.Execute(SQL2)

while not rs2.eof
	  
		
		  depto1 = rs2("direccion")
response.write (depto1)
		
rs2.movenext
wend
 ko = time()
		 
ko2 = date()
por = day(ko2)
if por < 10 then
por = "0"&por
end if
por2=month(ko2)
if por2 < 10 then
por2 = "0"&por2
end if
por3=year(ko2)
pus= hour(ko)
pus2 = minute(ko)
pus3 = second(ko)


fecha1 = por&"/"&por2&"/"&por3

SQL = "insert into papeleria(producto,cantidad,fecha,depto)values('"&art4&"','"&cant1&"','"&fecha1&"','"&depto1&"')"
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)

SQL3 = "Select * from `papeleria` order by id desc limit 1"
Set rs3 = conn.Execute(SQL3)

while not rs3.eof
hula = rs3("id")
rs3.movenext
wend

%>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">Número de Requisición <%response.Write(hula)%></p>
</body>
</html>
