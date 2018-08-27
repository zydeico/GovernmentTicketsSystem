<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Vales</title>
<style type="text/css">
<!--
.style2 {font-size: 36px}
.style4 {font-size: 10px; font-weight: bold; }
-->
</style>
</head>

<body>


<p>
  <%


SQL = "Select * from `papeleria` where `id` = '"&request.form("id")&"'"

  
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)



while not rs.eof
prodi = rs("producto")
cani = rs("cantidad")

fecha = rs("fecha")

folio=rs("id")


depto=rs("depto")

rs.movenext
wend
SQL2 = "Select * from `usuarios` where `direccion` = '"&depto&"'"
Set rs2 = conn.Execute(SQL2)
while not rs2.eof
okay = rs2("nombre")
rs2.movenext
wend
'response.write(prodi)
prod=split(prodi,",")
can=split(cani,",")




%>
</p>
<p>&nbsp;</p>
<table width="900" border="0" align="center">
  <tr>
    <td width="715" align="right"><span class="style2">Ficha de Requisici&oacute;n para Material de Papeler&iacute;a</span></td>
    <td width="175" align="center" rowspan="2"><img src="esc.jpg" width="101" height="129" /></td>
  </tr>
  <tr>
    <td align="center"><table width="681" border="0">
      <tr>
        <td align="center"><strong>Direcci&oacute;n o Coordinaci&oacute;n</strong></td>
        <td align="center"><strong>Fecha</strong></td>
      </tr>
      <tr>
        <td align="center"><%response.write(depto)%></td>
        <td align="center"><%response.write(fecha)%></td>
      </tr>
    </table></td>
   
  </tr>
</table>
<p>&nbsp;</p>
<table width="900" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#666666">
  <tr>
    <td width="100" align="center" bgcolor="#CCCCCC"><strong>CANTIDAD</strong></td>
    <td width="793" align="center" bgcolor="#CCCCCC"><strong>ART&Iacute;CULO</strong></td>
  </tr>
  <%for i = 0 to 29%>
  <tr>
    <td align="center" bgcolor="#FFFFFF"><%
	response.write(can(i))%>&nbsp;</td>
    <td align="left" bgcolor="#FFFFFF"><%response.write(prod(i))%>&nbsp;</td>
  </tr>
  <%next%>
</table>















<p>&nbsp;</p>
<table width="900" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#666666">
  <tr>
    <td align="center" bgcolor="#FFFFFF"><table width="600" border="0">
      <tr>
        <td align="center"><strong>Aprob&oacute;</strong></td>
        <td align="center"><strong>Autoriz&oacute;</strong></td>
        </tr>
      <tr>
        <td align="center"><%response.Write(okay)%></td>
        <td align="center">ISAC RAZO SERVIN</td>
        </tr>
      <tr>
        <td align="center">____________________</td>
        <td align="center">____________________</td>
      </tr>
      <tr>
        <td align="center"><strong><%response.write(depto)%></strong></td>
        <td align="center"><strong>OFICIAL MAYOR</strong></td>
      </tr>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="900" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#666666">
  <tr>
    <td bgcolor="#FFFFFF"><table width="890" border="0" align="center">
      <tr>
        <td width="418" class="style4">5 de Mayo # 101, Apaseo el Alto, Gto.</td>
        <td width="462" align="right" class="style4">H. AYUNTAMIENTO 2015-2018 APASEO EL ALTO GTO.</td>
      </tr>
      <tr>
        <td><span class="style4">Tels.: 01 (413) 166 00 33 y 166 00 28 Fax: 01 (413) 166 0594</span></td>
        <td align="right">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
