<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Modificación de Vales</title>
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
</head>

<body>
<%
xxo = request.querystring("fecha")

di = request.QueryString("dep")

%>


<form id="form1" name="form1" method="post" action="updateficha.asp?fecha=<%response.Write(xxo)%>&dep=<%response.write(di)%>">
  <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center" valign="bottom"><p>
          <%
xxoe = request.form("auto")


 SQL = "Select * from `fichas` where `id` = '"&xxoe&"' order by id asc"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)


while not rs.eof
%>
        CAMBIOS FICHAS </p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="0%" valign="top"><table width="108%" height='246' border="0" cellpadding="1" cellspacing="1" bordercolor="#000000" bgcolor="#000000">
                  <tr>
                    <td width="30%" bgcolor="#FFFFFF"><table width="900" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="25%" rowspan="8" align="center" valign="top">&nbsp;</td>
                          <td width="23%" align="right"><strong>Veh&igrave;culo:</strong></td>
                          <td width="33%">&nbsp;
                                                       <label>
                              <input name="vehiculo" type="text" id="vehiculo" value="<%response.write(rs("vehiculo"))%> " />
                              </label></td>
                          <td width="25%" rowspan="8" align="center" valign="top"><p>&nbsp;</p>
                              <p><span class="style1"><strong>Folio: </strong>
                                    <%response.write(rs("id"))%>
                              </span>
                                <input name="cambio" type="hidden" value="<%response.write(rs("id"))%>" />
                            </p>
                            <p><strong>Clave: </strong>
                                  <%response.write(rs("clave"))%>
                              </p>
                            <p>&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td align="right">&nbsp;</td>
                          <td>&nbsp;
                             
                              <label></label></td>
                        </tr>
                        <tr>
                          <td align="right"><strong>Lugar a visitar:</strong> </td>
                          <td>&nbsp;
                              
                              <label>
                              <input name="lugar" type="text" id="lugar" value="<%response.write(rs("lugar"))%>" />
                              </label></td>
                        </tr>
                        <tr>
                          <td align="right"><strong>Asunto:</strong></td>
                          <td>&nbsp;
                              
                              <label>
                              <input name="asunto" type="text" id="asunto" value="<%response.write(rs("asunto"))%>" />
                            </label></td>
                        </tr>
                        <tr>
                          <td align="right">&nbsp;</td>
                          <td>&nbsp;<label></label></td>
                        </tr>
                        <tr>
                          <td align="right"><strong>Responsable:</strong></td>
                          <td>&nbsp;
                              
                              <label>
                              <input name="responsable" type="text" id="responsable" value="<%response.write(rs("re"))%>" />
                              </label></td>
                        </tr>
                        <tr>
                          <td align="right"><strong>Fecha:</strong></td>
                          <td>&nbsp;
                              
                              <label>
                              <input name="fecha" type="text" id="fecha" value="<%response.write(rs("fe"))%>" />
                              </label></td>
                        </tr>
                        <tr>
                          <td width="23%" align="right"><strong>Departamento:</strong></td>
                          <td width="33%">&nbsp;
                              
                              <label>
                              <input name="departamento" type="text" id="departamento" value="<%response.write(rs("depto"))%>" />
                              </label></td>
                        </tr>
                        <tr>
                          <td align="center" valign="top">&nbsp;</td>
                          <td align="right"><strong>Cuenta</strong></td>
                          <td> &nbsp;
                            <label><input name="cuenta" type="text" id="cuenta" value="<%response.write(rs("cuenta"))%>" /></label></td>
                          <td align="center" valign="top">&nbsp;</td>
                        </tr>
                        
                    </table></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td valign="top">&nbsp;</td>
            </tr>
        </table></td>
    </tr>
    <tr>
      <td align="center"><%

           rs.movenext
	 	wend
	
 
		set conn=nothing
%></td>
    </tr>
    <tr>
      <td align="center"><label>
        <input name="Enviar" type="submit" id="Enviar" value="Enviar" />
        <br />
      vehiculo,re,fe,depto,clave,asunto,lugar,cuenta</label></td>
    </tr>
  </table>
</form>
</body>
</html>
