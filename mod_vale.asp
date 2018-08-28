
<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Modificador de Vale de Combustible</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="modifi_vale.php">
  <label>
  <div align="center">Ingresa el folio del vale<br />
  <input name="auto" type="text" id="auto" />
  </div></label>
  <label>
  <div align="center">
    <input type="submit" name="Submit" value="Submit" />
  </div>
  </label>
</form>
</body>
</html>
