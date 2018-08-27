<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Vales</title>
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {color: #000000}
.style3 {
	font-size: 9px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="bottom"><p>
      <%
xxo = request.form("factura")


 SQL = "Select * from `combustible` where `factura` = '"&xxo&"' order by id asc"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)


while not rs.eof
ipiu = ipiu + 1
%>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="0%" valign="top"><table width="108%" border="0" cellpadding="1" cellspacing="1" bordercolor="#000000" bgcolor="#000000">
            <tr>
              <td width="30%" bgcolor="#FFFFFF"><table width="900" border="0" cellspacing="0" cellpadding="0">
                  <tr>
				  <td width="25%" rowspan="8" align="center" valign="top"><img src="bloc.jpg" width="170" height="215" /></td>
                    <td width="23%" align="right"><strong>Veh&igrave;culo:</strong></td>
                    <td width="33%">&nbsp;<%response.write(rs("vehiculo"))%>                      </td>
					<td width="25%" rowspan="8" align="center" valign="top"><p><img src="bloc.jpg" width="205" height="107" /></p>
					  <p><span class="style1"><strong>Folio: </strong>
					      <%response.write(rs("id"))%> 
				        </span></p>
					  <p><strong>Clave: </strong>
					    <%response.write(rs("clave"))%>
					  </p>
					  </br>Cuenta:<%response.write(rs("cuenta"))%></br>
					  <p><%response.write(ipiu)%>
					  <%if rs("act") = 0 then%>
					  <a href="marcar.asp?vale=<%response.write(rs("id"))%>" class="style2">Marcar como impreso</a>
					  <%else%>
					  <span class="style2">Entregado</span>
					  
					  <%end if%> 
					  </p></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>Kms. Actual de la Unidad:</strong> </td>
                    <td>&nbsp;<%response.write(rs("kmactuales"))%></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>Lugar a visitar:</strong> </td>
                    <td>&nbsp;<%response.write(rs("lugarvisita"))%></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>Asunto:</strong></td>
                    <td>&nbsp;<%response.write(rs("asunto"))%></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>Litros:</strong></td>
                    <td>&nbsp;<%response.write(rs("lts"))%> 
                    de <%response.write(rs("tipo"))
					
					if rs("tipo") = "Gasolina" then
					response.Write(" Magna")
					end if
					
					
					
					%> 
                    <span class="style3">(vale con 0 litros no es v&aacute;lido)</span></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>Responsable:</strong></td>
                    <td>&nbsp;<%response.write(rs("re"))%></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>Fecha:</strong></td>
                    <td>&nbsp;<%response.write(rs("fe"))%> 
                      <span class="style3">v&aacute;lido solo en esta fecha</span></td>
                  </tr>
                  <tr>
                    <td width="23%" align="right"><strong>Departamento:</strong></td>
                    <td width="33%">&nbsp;<%response.write(rs("depto"))%></td>
                  </tr>
                  <tr>
                    <td align="center" colspan="4"><strong>H. Ayuntamiento 2006-2009</strong></td>
                  </tr>
                  <tr>
                    <td align="center" colspan="4"><table width="100%" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td align="right"><img src="89_32212_099309382910923049hhfjdn.JPG" width="150" height="75" /></td>
                        <td align="center"><img src="asudhlksdjhfkljasdhflkajsdhflkjshdhfieuwyr238273ofi.png" width="173" height="137" /></td>
                        <td align="center"><img src="32498237477987jhkjhsfdsello.png" width="186" height="137" /></td>
                        <td align="left"><img src="f09388477287288hf.png" width="150" height="101" /></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="center" colspan="4"><table width="100%" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="33%" align="center"><strong>Oficial&igrave;a Mayor</strong></td>
                        <td width="34%" align="center">&nbsp;</td>
                        <td width="33%" align="center"><strong>Firma Autorizada </strong></td>
                      </tr>
                    </table></td>
                  </tr>
                  
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td align="center"><%

           rs.movenext
	 	wend
	
 
		set conn=nothing
%></td>
  </tr>
</table>
</body>
</html>
