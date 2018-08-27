<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="50%" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>CANTIDAD</strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>ARTICULO</strong></td>
      <td align="center" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <label>
        <input name="textfield" type="text" size="4" />
        </label>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <label>
        <select name="select">
		
		<option value="------" selected="selected">
          -------          </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
        </label>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>1 </strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <label>
        <input name="textfield2" type="text" size="4" />
        </label>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <label></label>
        <select name="select2">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>2</strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><label>
        <input name="textfield3" type="text" size="4" />
      </label></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <label></label>
        <select name="select3">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>3</strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><label>
        <input name="textfield4" type="text" size="4" />
      </label></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <label></label>
        <select name="select4">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>4</strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <input name="textfield5" type="text" size="4" />
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <select name="select5">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>5</strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <input name="textfield6" type="text" size="4" />
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <select name="select6">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>6</strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <input name="textfield7" type="text" size="4" />
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <select name="select7">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>7</strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <input name="textfield8" type="text" size="4" />
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <select name="select8">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>8</strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <input name="textfield9" type="text" size="4" />
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <select name="select9">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>9</strong></td>
    </tr>
    <tr>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <input name="textfield10" type="text" size="4" />
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>
        <select name="select10">
          <option value="------" selected="selected"> ------- </option>
          <%
		 
	 SQL = "Select * from `articulos`"
     Set conn = Server.CreateObject("ADODB.Connection")
     conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=pape976ler21;PASSWORD=pm3649alto;OPTION=3;"
	'  conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=pape;USER=root;PASSWORD=root;OPTION=3;"
	 
     Set rs = conn.Execute(SQL)
	 
while not rs.eof
		  %>
          <option value="<%response.Write(rs("nombre"))%>">
          <%response.Write(rs("nombre"))%>
          </option>
          <%
		  rs.movenext
		  wend
		  %>
        </select>
      </strong></td>
      <td align="center" bgcolor="#CCCCCC"><strong>10</strong></td>
    </tr>
  </table>
</form>
</body>
</html>
