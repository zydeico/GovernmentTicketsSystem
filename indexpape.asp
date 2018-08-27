<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "tipovale.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Papeleria</title>
</head>

<body>
<table width="50%" border="0" align="center" cellpadding="2" cellspacing="2">
  <tr>
    <td align="center" bgcolor="#CCCCCC"><a href="papeleria.asp">DAR DE ALTA ARTICULO</a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC"><a href="papemes.asp">REPORTES POR MES</a> </td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC"><a href="papetotmes.asp">TOTALES POR MES </a></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#CCCCCC"><a href="previopape.asp">IMPRIMIR REQUISICIONES</a></td>
  </tr>
</table>
<a href="papeleria.asp"></a>
</body>
</html>
