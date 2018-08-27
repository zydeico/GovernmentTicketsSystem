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

<form id="form1" name="form1" method="post" action="updatevale.asp">
<%


SQL = "Select * from `vales` where `id` = '"&request.form("id")&"'"
SQL4 = "Select * from `proveedores` order by tipo"
  
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
Set rs4 = conn.Execute(SQL4)


while not rs.eof
prodi = rs("concepto")
cani = rs("cantidad")

fecha = rs("fecha")
respon=rs("responsable")
folio=rs("id")
nego=rs("negocio")
cuenta=rs("cuenta")
depto=rs("depto")

rs.movenext
wend
response.write(prodi)
prod=split(prodi,",")
can=split(cani,",")




%>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="25%" rowspan="8" align="center" valign="top">&nbsp;</td>
    <td width="10%" align="center">Cantidad</td>
    <td width="40%" align="center">Art&iacute;culo</td>
    <td width="25%" rowspan="8" align="center" valign="top"><p>&nbsp;</p>
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
    <input name="can1" type="text" id="can1" size="3" maxlength="3" value="<%response.write(can(0))%>"/>
    </label></td>
    <td align="center"><label>
<input name="pro1" type="text" id="pro1" value="<%response.write(prod(0))%>" />
    </label></td>
  </tr>
  <tr>
    <td align="center"><input name="can2" type="text" id="can2" size="3" maxlength="3" value="<%response.write(can(1))%>"/></td>
    <td align="center"><input name="pro2" type="text" id="pro2" value="<%response.write(prod(1))%>" />
    </td>
  </tr>
  <tr>
    <td align="center"><input name="can3" type="text" id="can3" size="3" maxlength="3" value="<%response.write(can(2))%>"/></td>
    <td align="center"><input type="text" name="pro3" id="pro3" value="<%response.write(prod(2))%>"/></td>
  </tr>
  <tr>
    <td align="center"><input name="can4" type="text" id="can4" size="3" maxlength="3" value="<%response.write(can(3))%>"/></td>
    <td align="center"><input type="text" name="pro4" id="pro4" value="<%response.write(prod(3))%>"/></td>
  </tr>
  <tr>
    <td align="center"><input name="can5" type="text" id="can5" size="3" maxlength="3" value="<%response.write(can(4))%>"/></td>
    <td align="center"><input type="text" name="pro5" id="pro5" value="<%response.write(prod(4))%>"/></td>
  </tr>
  <tr>
    <td align="center"><input name="can6" type="text" id="can6" size="3" maxlength="3" value="<%response.write(can(5))%>"/></td>
    <td align="center"><input type="text" name="pro6" id="pro6" value="<%response.write(prod(5))%>"/></td>
  </tr>
  <tr>
    <td width="23%" align="center">&nbsp;</td>
    <td width="33%">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" colspan="4"><table width="100%" border="0" cellspacing="1" cellpadding="1">
      <tr>
        <td width="25%" align="right">&nbsp;</td>
        
        
        <%
		
		
		SQL2 = "Select * from `proveedores` where `id` = '"&nego&"'"

  
  
Set rs2 = conn.Execute(SQL2)
		
		
		
		
		%>
        
        
        
        <td width="25%" align="left" valign="top"><strong>Vale a</strong>:
          <label>          <br />
          <select name="nego" id="nego">
            <%while not rs4.eof%>
            <option value="<%=rs4("id")%>"><%=rs4("tipo")%>---<%=rs4("nombre")%></option>
            <%rs4.movenext
		wend
  %>
          </select>
          </label>
          
        <br />
        <strong>Responsable</strong>:
        <input name="respon" type="text" id="respon" value="<%response.write(respon)%>" />
<p>&nbsp;</p></td>
        <td width="25%" align="left" valign="top"><strong>Depto:</strong><br />
          <label>
          <input name="depto" type="text" id="depto" value="<%response.write(depto)%>" />
<br />
          <strong>Cuenta</strong>:<br />
<input name="cuenta" type="text" id="cuenta" value="<%response.write(cuenta)%>" />
          <br />
          <br />
          </label></td>
        <td width="25%" align="left">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center" colspan="4"><table width="100%" border="0" cellspacing="1" cellpadding="1">
      <tr>
        <td width="33%" align="center"><label>
          <input type="submit" name="button" id="button" value="Enviar" />
        </label></td>
        <td width="34%" align="center"><%
		
		'response.write(prod(1))
		'response.write(prod(2))
		'response.write(prod(3))
		'response.write(prod(4))
		'response.write(prod(5))
		'response.write(prod(0))
		%>&nbsp;</td>
        <td width="33%" align="center">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
