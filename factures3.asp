

<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

<% 'if session("usuario") = ""  then

'response.redirect "index.asp"

'end if

o = request.form("hola")%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Combustible</title>
<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="tesxxx2.asp" onSubmit = "">
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td align="center" bgcolor="#00FF00">&nbsp;</td>
    </tr>
  </table>
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td><table width="800" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td width="50%" align="right">Factura</td>
          <td width="50%"><label>
          
          <br /><%
		  
		  
		   SQL = "SELECT * FROM `fichas` order by `factura` DESC"
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
		  
		  
		  
		  %>
		 
		  <select name="ficha" size="8" id="ficha">
		   
		  
		  <% 
		  nick = 0
		  while not rs.eof
		  
		  if rs("factura") = nick then
		  
		  no = 0
		  
		  else
		  nick = rs("factura")
		  response.Write(rs("factura"))
		  end if
		  
		  'if nick > 1 then
		 		 
		  
		  %>
		  <option value="<%response.Write(rs("factura"))%>"><%response.Write(rs("factura"))%></option>
		  
		  <%
		  'else
		  
		  'poepeoepeoe = 0
		  'end if
		  'end if
		  
		  
		  rs.movenext
		  'if rs("factura") = "" then
		  'wend
		  'end if
		  wend
		  %>
          </select>
		   
		  
          </label></td>
        </tr>
        <tr>
          <td align="right">Enviar Solicitud </td>
          <td><input name="Enviar" type="submit" id="Enviar" value="Enviar" /></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>