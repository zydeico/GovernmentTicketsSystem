<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("usuario") = ""  then

response.redirect "index.asp"

end if






		  rocko = session("usuario")



 if rocko = "bomberos" then
		 response.Redirect("combustible.asp")
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
    <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
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
      <a href="previovale.asp" class="style4" >Imprimir Vales </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="proveedor.asp" class="style4">ALTA PROVEEDORES</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="combustibleprestado2.asp" class="style4">
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
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4"><a href="teso.asp" class="style4"></a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC" class="style4">&nbsp;</td>
  </tr>
</table>
</body>
</html>
