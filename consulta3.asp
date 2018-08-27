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
.style3 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style9 {font-family: Arial, Helvetica, sans-serif; font-size: 25px; font-weight: bold; }
-->
</style>
</head>

<body>
<%
xxo = request.form("id")


 SQL = "Select * from `combustible` where `id` = '"&xxo&"' order by id asc"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)

ipiu = 0
while not rs.eof
ipiu = ipiu + 1
%>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
  <tr>
    <td align="center" valign="bottom" background="Dibujo2.JPG"><p>
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="0%" valign="top"><table width="108%" border="0" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
            <tr>
              <td width="30%" bgcolor="#FFFFFF"><table width="900" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
                  <tr>
				  <td width="200" rowspan="8" align="left" valign="bottom" background="Dibujo3.jpg"><p><img src="32498237477987jhkjhsfdsello.png" width="110" height="90" /></p>
				    <p><img src="asudhlksdjhfkljasdhflkajsdhflkjshdhfieuwyr238273ofi.png" width="110" height="90" /></p></td>
                    <td width="400" align="left" valign="bottom" background="Dibujo3.jpg"><span class="style9"><img src="Image1.png" width="20" height="62" /></span>
                      <span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span>
                      <%response.write(rs("vehiculo"))%></td>
                    <td width="300" rowspan="8" valign="bottom" background="Dibujo3.jpg"><p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p><%response.write(ipiu)%>
                        <%if rs("act") = 0 then%>
                        </span><a href="marcar.asp?vale=<%response.write(rs("id"))%>">Marcar como impreso</a>
                        <%else%>
                        Entregado
                        <%end if%>
                      </p>
                      <p><span class="style3"><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span></span><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span>
                        <%response.write(rs("id"))%>
                      </p>
                      <p> <img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span>
                        <%response.write(rs("clave"))%>
                      </p>
                      <p><img src="89_32212_099309382910923049hhfjdn.JPG" width="120" height="61" /><img src="3249082374098732094871230948lkjhsdflkjhsdf.png" width="116" height="69" /></p>                      </td>
					</tr>
                  <tr>
                    <td height="36" align="left" valign="bottom" background="Dibujo3.jpg"><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span></span>
                      <%response.write(rs("kmactuales"))%></td>
                  </tr>
                  <tr>
                    <td height="36" align="left" valign="bottom" background="Dibujo3.jpg"><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span></span>
                      <%response.write(rs("lugarvisita"))%></td>
                  </tr>
                  <tr>
                    <td height="36" align="left" valign="bottom" background="Dibujo3.jpg"><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span></span>
                      <%response.write(rs("asunto"))%></td>
                  </tr>
                  <tr>
                    <td height="37" align="left" valign="bottom" background="Dibujo3.jpg"><span class="style9"><img src="Image1.png" width="16" height="19" /></span></span>
                      <%response.write(rs("lts"))%>
de
<%response.write(rs("tipo"))
					
					if rs("tipo") = "Gasolina" then
					response.Write(" Magna")
					end if
					
					
					
					%>
<strong>vale con 0 litros no es v&aacute;lido </strong></td>
                  </tr>
                  <tr>
                    <td height="37" align="left" valign="bottom" background="Dibujo3.jpg"><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span></span>
                      <%response.write(rs("re"))%></td>
                  </tr>
                  <tr>
                    <td height="37" align="left" valign="bottom" background="Dibujo3.jpg"><span class="style9"><img src="Image1.png" width="16" height="19" /></span>
                      <%response.write(rs("fe"))%>
                      <strong>v&aacute;lido solo en esta fecha </strong></td>
                  </tr>
                  <tr>
                    <td height="37" align="left" valign="bottom" background="Dibujo3.jpg"><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /><img src="Image1.png" width="16" height="19" /></span><span class="style9"><img src="Image1.png" width="16" height="19" /></span>
                      <%response.write(rs("depto"))%></td>
                  </tr>
                  <tr>
                    <td align="center" valign="top">&nbsp;</td>
                    <td align="left"><span class="style9"><img src="Image1.png" width="20" height="180" /></span></td>
                    <td>&nbsp;</td>
                    </tr>
                  
                  
                  
                  

              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>    </td>
  </tr>
</table>
<%

           rs.movenext
	 	wend
	
 
		set conn=nothing
%>
</body>
</html>
