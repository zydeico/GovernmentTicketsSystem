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
.style1 {color: #FF0000}
-->
</style>
</head>

<body>

<%

SQL = "Select * from `vales` where `id` = '"&request.form("id")&"'"
  
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)


while not rs.eof
prodi = rs("concepto")
cani = rs("cantidad")
cuenta2 =rs("cuenta2")
fecha = rs("fecha")
respon=rs("responsable")
folio=rs("id")
nego=rs("negocio")
cuenta=rs("cuenta")
depto=rs("depto")
recibio = rs("recibio")

rs.movenext
wend
'response.write(prodi)
prod=split(prodi,",")
can=split(cani,",")

%>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="25%" rowspan="8" align="center" valign="top"><img src="bloc.jpg" width="170" height="215" /></td>
    <td width="10%" align="center">      Cantidad</td>
    <td width="40%" align="center">Art&iacute;culo</td>
    <td width="25%" rowspan="8" align="center" valign="top"><p><img src="bloc.jpg" width="205" height="107" /></p>
        <p><span class="style1"><strong>Folio: </strong>
              <label>
              <%response.write(folio)%>
              </label>
        </span></p>
      <p>Fecha 
        <label>
        <%response.write(fecha)%>
        </label>
      </p>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td align="center"><label>
      
      ____
      -
      <%response.write(can(0))%>
    </label></td>
    <td align="center"><label>
      <%response.write(prod(0))%>
    </label></td>
  </tr>
  <tr>
    <td align="center">
      ____
      -
      <%response.write(can(1))%></td>
    <td align="center"><%response.write(prod(1))%></td>
  </tr>
  <tr>
    <td align="center">
      ____
      -
      <%response.write(can(2))%></td>
    <td align="center"><%response.write(prod(2))%></td>
  </tr>
  <tr>
    <td align="center">
      ____
      -
      <%response.write(can(3))%></td>
    <td align="center"><%response.write(prod(3))%></td>
  </tr>
  <tr>
    <td align="center">
      ____
      -
      <%response.write(can(4))%></td>
    <td align="center"><%response.write(prod(4))%></td>
  </tr>
  <tr>
    <td align="center">
      ____
      -
      <%response.write(can(5))%></td>
    <td align="center"><%response.write(prod(5))%></td>
  </tr>
  <tr>
    <td width="23%" align="center">Total: __________</td>
    <td width="33%">&nbsp;</td>
  </tr>
<tr>
    <td align="center">&nbsp;</td>
    <td align="center"><strong>Asunto:</strong></td>
    <td align="center"><div align="left">
     <%response.write(recibio)%>
     </div></td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" colspan="4"><strong>H. Ayuntamiento 2015-2018</strong></td>
  </tr>
      <tr>
    <td align="center" colspan="4"><table width="100%" border="0" cellspacing="1" cellpadding="1">
      <tr>
           <%SQL2 = "Select * from `proveedores` where `id` = '"&nego&"'"
  
Set rs2 = conn.Execute(SQL2)
		
		%>
         <td width="25%" align="left" valign="top"><strong>Vale a</strong>:
          <%
		  while not rs2.eof
		  response.write(rs2("nombre"))
          rs2.movenext
          wend
		  %>
        <br />
        <strong>Responsable</strong>:
        <%response.write(respon)%>
          <p>&nbsp;</p></td>
        <td width="25%" align="center" valign="top"><strong>Depto</strong>:
          <label>
          <%response.write(depto)%>
          <br />
          <strong>Cuenta</strong>:
          <%response.write(cuenta)%>
          <br />
          <strong>Cuenta</strong>:
          <%response.write(cuenta2)%>
          <br />
          </label></td>
            </tr>
    </table></td>
  <tr>
</tr>
  <tr>
    <td align="right" colspan="4"><table width="100%" border="0" cellspacing="1" cellpadding="1">
      <tr>
       <td width="33%" align="center"><p><strong>VO. BO.</strong>&nbsp;</p>
          <p>OFICIAL MAYOR </p></td>
        <td width="34%" align="center">&nbsp;<%
		
		'response.write(prod(1))
		'response.write(prod(2))
		'response.write(prod(3))
		'response.write(prod(4))
		'response.write(prod(5))
		'response.write(prod(0))
		%>&nbsp;</td>
        <td width="33%" align="center"><p class="style2">AUTORIZO </p>
          <p class="style2">DIRECTOR</p></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
