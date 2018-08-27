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
-->
</style>
</head>

<body>
<%
xxo = request.querystring("fecha")

di = request.QueryString("dep")

%>


<form id="form1" name="form1" method="post" action="update2.asp?fecha=<%response.Write(xxo)%>&dep=<%response.write(di)%>">
  <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center" valign="bottom"><p>
          <%
xxoe = request.QueryString("auto")


 SQL = "Select * from `precio`"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)


while not rs.eof
%>
        CAMBIOS EN LOS PRECIOS </p>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="0%" valign="top"><table width="108%" border="0" cellpadding="1" cellspacing="1" bordercolor="#000000" bgcolor="#000000">
                  <tr>
                    <td width="30%" bgcolor="#FFFFFF"><table width="900" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="25%" rowspan="2" align="center" valign="top">&nbsp;</td>
                          <td width="23%" align="right"><strong>Gasolina</strong></td>
                          <td width="33%">&nbsp;
                                                       <label>
                              <input name="gas" type="text" id="gas" value="<%response.write(rs("precio"))%> " />
                              </label></td>
                          <td width="25%" rowspan="2" align="center" valign="top"><p>&nbsp;</p>
                              <p>&nbsp;</p>
                            <p>&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td align="right"><strong>Diesel</strong> </td>
                          <td>&nbsp;
                             
                              <label>
                              <input name="die" type="text" id="die" value=" <%response.write(rs("preciodiesel"))%>" />
                            </label></td>
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
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>
