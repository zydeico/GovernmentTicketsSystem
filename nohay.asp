<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
Les quedan solamente <%
SQL = "SELECT * FROM `usuarios` WHERE `usuario` = 'bomberos'"

Set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
 'Set rs4 = conn.Execute(SQL)
 
while not rs4.eof
response.Write(rs4("bomb"))
up = rs4("bomb2")
rs4.movenext
wend
 
1000%> 
litros de Diesel y  
<%

 
 
response.Write(up)

1000%>
de Gasolina al departamento de bomberos deacuerdo al convenio. 
</body>
</html>
