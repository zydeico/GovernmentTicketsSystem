<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("usuario") = ""  then

response.redirect "index.asp"

end if






		  rocko = session("usuario")







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

tyu = pus&pus2


ytyt = 1530
limiteh = 15
limitem = 30
kokito = liminteh & limitem

if pus2+pus > limiteh+limitem then
response.Write("-----"&tyu&"------Fuera de horario------")
if pus > 14 then
response.Write("-----"&tyu&"------Fuera de horario------")
response.Redirect("fueradehorario.asp")
end if
end if
 


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Tipo de Vale</title>
<style type="text/css">
<!--
.style4 {
	color: #000000;
	font-weight: bold;
}
.style5 {color: #F0F0F0}

-->
</style>
</head>

<body>
<table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr>
    <td align="center" bgcolor="#CCCCCC"><span class="style4">Selecciona el tipo de vale que quieras</span> </td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr>
    <td align="center" bgcolor="#CCCCCC"><a href="combustible.asp" class="style4">COMBUSTIBLE</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="combustibleprestado.asp" class="style4" >VALE PARA VEHICULO PRESTADO</a> </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="ficha.asp" class="style4">Fichas</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><%
	
	
	user = session("usuario")
	 SQL = "Select * from `usuarios` where `usuario` = '"&user&"'"
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
while not rs.eof
if rs("admin") = 1 then
%>
      <a href="admin.asp" class="style4" >Imprimir Vales </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="reportes.asp" class="style4">Reportes</a>        </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="cambioprecio.asp" class="style4">Cambio Precio Combustible</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="bomberos.asp" class="style4">Cambio Bomberos Diesel
        
    </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"> <a href="bomberos2.asp" class="style4">Cambio Bomberos Gasolina</a> <a href="bomberos.asp" class="style4"></a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="admin3.asp" class="style4">Imprimir Fichas </a><a href="bomberos.asp" class="style4"></a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><span class="style5"><a href="fichacambios.asp" class="style4">Cambios Fichas</a> <a href="bomberos.asp" class="style4"></a></span></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="indexpape.asp" class="style4">PAPELERIA</a><a href="bomberos.asp" class="style4"></a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="combustibleprestado2.asp" class="style4">
      REGULARIZAR VALES
      <%
session("admin") = 1
end if
rs.movenext
wend
set conn=nothing
	
	%>
    </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="fichaprestado.asp" class="style4">FICHAS PARA VEHICULO PRESTADO</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><%if rocko = "tesoreria" then
		 %>
      <a href="teso.asp" class="style4">FACTURAS</a>
      <%
		  end if%></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><%
	
	
	user = session("usuario")
	 SQL = "Select * from `usuarios` where `usuario` = '"&user&"'"
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
while not rs.eof
if rs("admin") = 1 then
%>
      <a href="reportesxauto.asp" class="style4">      CONSULTA POR VEHICULO</a> 
      <a href="bomberos.asp" class="style4">
      <%
session("admin") = 1
end if
rs.movenext
wend
set conn=nothing
	
	%>
    </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="teso.asp" class="style4">
      <%if rocko = "oficialia" then
		 %>
      FACTURAS
      
    </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="valessinres.asp" class="style4">VALES PARA ACTUALIZAR</a><a href="teso.asp" class="style4"></a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="valessinres2.asp" class="style4">VALES DE APOYO</a><a href="teso.asp" class="style4">
      <%
		  end if%>
    </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><%if rocko = "oficialia" then
		 %>
      <a href="vales2.asp">VALES</a>
    <%
		  end if%></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="supervale.asp">VALE PRODUCTOS</a></td>
  </tr>
</table>
</body>
</html>
