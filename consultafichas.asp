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
.style2 {color: #000000}
.style17 {font-size: 20px}
.style13 {font-size: 20px}
.style18 {font-size: 14px}
-->
</style>
</head>

<body>
<%
xxo = request.form("dia")&"/"&request.form("mes")&"/"&request.form("anho")


 SQL = "Select * from `fichas` where `fe` = '"&xxo&"' order by id asc"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)

ipiu = 0
while not rs.eof
ipiu = ipiu + 1
%>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
  <tr>
    <td width="50" align="center" bgcolor="#FFFFFF"></td>
    <td width="400" bgcolor="#FFFFFF"></td>
    <td width="50" bgcolor="#FFFFFF"></td>
    <td width="400" align="center" valign="bottom" bgcolor="#FFFFFF"></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td align="center" valign="bottom" bgcolor="#FFFFFF"></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td align="center" valign="bottom" bgcolor="#FFFFFF"><%
		
		 
		 response.Write(ipiu)
		
		 
		 %>
      <%if rs("act") = 0 then%>
      <a href="marcar2.asp?vale=<%response.write(rs("id"))%>" class="style2">Marcar como impreso</a>
      <%else%>
      <span class="style2">Entregado</span>
      <%end if%></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td align="center" valign="bottom" bgcolor="#FFFFFF"><%
		
		 
		 response.Write("folio "&rs("id"))
		
		 
		 %></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td align="center" valign="bottom" bgcolor="#FFFFFF"></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td valign="bottom" bgcolor="#FFFFFF"></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="300">&nbsp;</td>
    <td width="600">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="70">&nbsp;</td>
    <td width="400">&nbsp;</td>
    <td width="50">&nbsp;</td>
    <td width="380">&nbsp;</td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="70">&nbsp;</td>
    <td width="400" bgcolor="#FFFFFF"><span class="style17">
    <%
		
		 
		 response.Write(rs("fe"))
		
		 
		 %></span></td>
    <td width="50" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="380" bgcolor="#FFFFFF"><span class="style17">
      <%
		
		 
		 response.Write(rs("lugar"))
		
		 
		 %>
      </span></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="300">&nbsp;</td>
    <td width="600">&nbsp;</td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="300">&nbsp;</td>
    <td width="600" valign="top" bgcolor="#FFFFFF"><span class="style17">
    <%
		
		 
		 response.Write(rs("re"))
		
		 
		 %></span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="200">&nbsp;</td>
    <td width="200">&nbsp;</td>
    <td width="200" bgcolor="#FFFFFF"><span class="style17">
    <%
		
		 
		 response.Write(rs("vehiculo"))
		
		 
		 %></span></td>
    <td width="300" bgcolor="#FFFFFF"><span class="style17">
    <%
		
		 
		 response.Write(rs("depto"))
		
		 
		 %></span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="300">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><span class="style13">
      <%
		
		 
		 response.Write(rs("asunto")&" /")
		
		 
		 %>
    </span></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
 
</table>
<%

           rs.movenext
	 	wend
	
 
		set conn=nothing
%>
</body>
</html>
