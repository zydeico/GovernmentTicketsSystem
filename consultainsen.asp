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
xxo = request.form("dia")&"/"&request.form("mes")&"/"&request.form("anho")


 SQL = "Select * from `insen` where `fecha` = '"&xxo&"' order by id asc"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)


while not rs.eof
ipiu = ipiu + 1
%>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="0%" valign="top"><table width="108%" border="0" cellpadding="1" cellspacing="1" bordercolor="#ffffff" bgcolor="#ffffff">
            <tr>
              <td width="30%" bgcolor="#FFFFFF"><table width="900" border="0" cellspacing="0" cellpadding="0">
                  <tr>
				  <td width="25%" rowspan="8" align="center" valign="top"><img src="blank.JPG" width="170" height="215" /></td>
                    <td width="23%" align="left"><%response.write(rs("curp"))%>
                      <img src="blank.JPG" width="63" height="55" /></td>
                    <td width="33%" align="right" valign="bottom"><%response.write(rs("fecha"))%></td>
					<td width="25%" rowspan="8" align="center" valign="top"><p><img src="blank.JPG" width="205" height="107" /></p>
					  <p>&nbsp;</p>					  </td>
                  </tr>
                  <tr>
                    <td rowspan="7" align="left" valign="top"><p><img src="blank.JPG" width="63" height="25" />
                        <%response.write(rs("apellido"))%>
                    </p>
                      <p><img src="blank.JPG" width="63" height="2" />
                        <%response.write(rs("apellido2"))%>
                      </p>
                      <p><img src="blank.JPG" width="63" height="2" />
                        <%response.write(rs("nombre"))%>
</p></td>
                    <td rowspan="7" align="left" valign="top"><img src="blank.JPG" width="63" height="1" />
                        <%response.write(rs("calle"))%>
                        <br />
                        
                    <img src="blank.JPG" width="63" height="1" />
                        <%response.write(rs("colonia"))%> 
                        - CP 
                        <%response.write(rs("cp"))%>
                        <br />
                        
                    <img src="blank.JPG" width="63" height="1" />
                        <%response.write(rs("mpio"))%>, <%response.write(rs("entidad"))%> 
                        <br />
                        <br />
                        <img src="blank.JPG" width="63" height="1" />
                        <%response.write(rs("nombre2"))%><br />
                        <img src="blank.JPG" width="63" height="1" />
                        <%response.write(rs("tel2"))%>
                       </td>
                  </tr>
                  <tr>
                   
                  
                  </tr>
                  <tr>
             
                  
                  </tr>
                  <tr>
                   
                    
                  </tr>
                  <tr>
                   
                    
                  </tr>
                  <tr>
                    
                    
                  </tr>
                  <tr>
                    
                  
                  </tr>
                  <tr>
                    <td align="center" colspan="4">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" colspan="4"><table width="100%" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td align="right"><img src="blank.JPG" width="150" height="75" /></td>
                        <td align="center"><img src="blank.JPG" width="173" height="137" /></td>
                        <td align="center"><img src="blank.JPG" width="186" height="137" /></td>
                        <td align="left"><img src="blank.JPG" width="150" height="101" /></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="center" colspan="4"><table width="100%" border="0" cellspacing="1" cellpadding="1">
                      <tr>
                        <td width="33%" align="center">&nbsp;</td>
                        <td width="34%" align="center">&nbsp;</td>
                        <td width="33%" align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center">&nbsp;</td>
                        <td align="center">kjhkjhkjhkjh</td>
                        <td align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center">&nbsp;</td>
                        <td align="center">2222222222</td>
                        <td align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                        <td align="center">&nbsp;</td>
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
