<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("usuario") = ""  then
response.redirect "iniciosesion.html"
end if
 rocko = session("usuario")
%>
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


'dim ytyt as integer
'dim tyu as integer
tyu = pus&pus2
response.Write(pus&"<br />")
response.Write(pus2&"<br />")
response.Write(pus3&"<br />")


proco = pus * 100
huno = proco + pus2

atila = 1530

response.Write(atila&"<br />")
response.Write(huno&"<br />")
if huno > atila then
'response.redirect "iniciosesion.htm"

response.Write("Fuera de horario")

else

response.Write("No fuera de horario")

end if



%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
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
	
<!--	<SCRIPT>
  window.alert("AVISO: A partir del Miercoles 28 de Septiembre del 2016 se cambiaran las contrase�as del sistema de vales por lo cual se les pide mandar y recoger su nueva contrase�a a las oficinas de OFICIALIA MAYOR. Por  su comprensi�n gracias.");
</SCRIPT>
-->
<table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr>
    <td align="center" bgcolor="#3149D0"><span class="style4"><font color="#FFFFFF">SISTEMA DE VALES Y FICHAS</font></span> </td>
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
    <td align="center" bgcolor="#CCCCCC"><a href="pagcalendar.asp" class="style4">ELABORACION DE VALE DE COMBUSTIBLE</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="combustibleprestado.asp" class="style4" >ELABORACION DE VALE PARA VEHICULO PRESTADO</a> </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="ficha.asp" class="style4">ELABORACION DE FICHAS</a></td>
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
  
      <a href="admin.asp" class="style4" >IMPRESION DE VALE DE COMBUSTIBLE</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="reportes.asp" class="style4">MODIFICACION DE VALE DE COMBUSTIBLE</a>        </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="http://apaseoelaltogto.org.mx/sistemas/" class="style4">INVENTARIO DE EQUIPOS</a>        </td> 
 
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="admin3.asp" class="style4">IMPRESION DE FICHA </a><a href="bomberos.asp" class="style4"></a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><span class="style5"><a href="fichacambios.asp" class="style4">MODIFICACION DE FICHA</a> <a href="bomberos.asp" class="style4"></a></span></td>
  </tr>

	<tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><span class="style5"><a href="prodcambios.asp" class="style4">MODIFICACION DE VALE DE PRODUCTO</a> <a href="bomberos.asp" class="style4"></a></span></td>
  </tr>
	

	<tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><span class="style5"><a href="mod_vale.asp" class="style4">MODIFICACION DE VALE</a> <a href="bomberos.asp" class="style4"></a></span></td>
  </tr>

<tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><span class="style5"><a href="facficha.asp" class="style4">ALTA DE FACTURAS</a> <a href="bomberos.asp" class="style4"></a></span></td>
  </tr>
	<tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><span class="style5"><a href="facvale.asp" class="style4">ALTA DE FACTURAS DE VALES</a> <a href="bomberos.asp" class="style4"></a></span></td>
  </tr>

  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="indexpape.asp" class="style4">IMPRESION DE REQUISICION DE PAPELERIA</a><a href="bomberos.asp" class="style4"></a></td>
  </tr>
  <tr>
    
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
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="fichaprestado.asp" class="style4">ELABORACION DE FICHA PARA VEHICULO PRESTADO</a></td>
  </tr>

	<tr>
    <td align="center" bgcolor="#3149D0" class="style4"><%if rocko = "OficialiaMayor" then
		 %>
      <a href="repotesos.asp"class="style4 style6 style7">BITACORA COMBUSTIBLE</a>    <%
		  end if%></td>
  </tr>
		
<tr>
    <td align="center" bgcolor="#3149D0" class="style4"><%if rocko = "CasaCultura" then
		 %><a href="educacion/cultura.html" class="style4 style6 style7">FORMATO DE INSCRIPCION</a><%
		  end if%></td>
  </tr>
  
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><%if rocko = "Tesoreria" then
		 %>
      <a href="teso.asp" class="style4">BITACORAS</a>
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
      <%if rocko = "OficialiaMayor" then
		 %>
      <a href="factures.asp">BITACORAS DE VEHICULOS
      
    </a></td>
  </tr>
 
 
      <%
		  end if%>
    </a></td>
  </tr>

  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><%if rocko = "OficialiaMayor" then
		 %>
      <a href="vales2.asp">IMPRESION DE VALE DE PRODUCTO</a>
    <%
		  end if%></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="supervale.asp">ELABORACION DE VALE DE PRODUCTO</a></td>
  </tr>
<!--  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="papeleria.asp">REQUISICION DE PAPELERIA</a></td>
  </tr>
-->
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">





<%if rocko = "Regidores" then%>


<a href="combustible95.asp">COMBUSTIBLE OTROS VEHICULOS</a>



<%end if%>



<%if rocko = "Presidencia" then%>


<a href="combustible95.asp">COMBUSTIBLE OTROS VEHICULOS</a>



<%end if%>






</td>

  </tr>
  <tr>

  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="FORMATOSREQUISICION.doc">FORMATO PARA REQUISICION DE PAPELERIA </a></td>
  </tr>
 <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="reglamento.pdf">REGLAMENTO INTERNO DE PRESIDENCIA</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="RFC.pdf">RFC DEL MUNICIPIO</a></td>
  </tr>
<tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="CALENDARIO2018.pdf">---------------CALENDARIO OFICIAL 2018-----------------</a></td>
  </tr>
</table>
</body>
</html>
