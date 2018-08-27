
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body><%


nombre=request.form("nombre")
apellido=request.form("apellido")
apellido2=request.form("apellido2")
fecha=request.form("fecha")
calle=request.form("calle")
colonia=request.form("col")
cp=request.form("cp")
mpio=request.form("mpio")
entidad=request.form("entidad")
nombre2=request.form("nombre2")
tel=request.form("telefono")
tel2=request.form("telefono2")
curp=request.form("curp")





SQL = "insert into insen(nombre,apellido,apellido2,fecha,calle,colonia,cp,mpio,entidad,nombre2,tel,tel2,curp)values('"&nombre&"','"&apellido&"','"&apellido2&"','"&fecha&"','"&calle&"','"&colonia&"','"&cp&"','"&mpio&"','"&entidad&"','"&nombre2&"','"&tel&"','"&tel2&"','"&curp&"')"


Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"



Set rs = conn.Execute(SQL)






%>
</body>
</html>
