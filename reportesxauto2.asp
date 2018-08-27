<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.boton {color:#000000; 
font-weight:bold; 
font-family: Arial;
background-color:#95B4E3}
.style10 {font-family: Arial}
.style7 {font-size: 13px;
	color: #FFFFFF;
	font-family: Arial;
}
.style11 {color: #000000}
-->
</style>
</head>

<body>
<%
vehicle = request.Form("vehiculo")
response.Redirect("repauto.asp?auto="&vehicle)
%>



<form id="form1" name="form1" method="post" action="reportesxauto2.asp">


  <table width="800" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <th bgcolor="#00FF00" scope="col"><span class="style11">Administraci&ograve;n de Vales </span></th>
    </tr>
  </table>
  <table width="800" border="0" align="center" cellpadding="0" cellspacing="2" bgcolor="#000000">
    <tr>
      <th scope="col"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F2F2F2">
          <tr>
            <td width="100%" colspan="2" align="center" bgcolor="#00FF00"><p align="center"></p>
            <p align="center" class="style7">&nbsp;</p></td>
          </tr>
          <tr>
            <td width="0%" align="right">&nbsp;</td>
            <td width="100%" align="center">D&igrave;a para hacer el reporte </td>
          </tr>
          <tr>
            <td width="0%" align="right">&nbsp;</td>
            <td width="100%" align="center">
            <label></label><label>
            <input name="vehiculo" type="text" id="vehiculo" />
            </label></td>
          </tr>
          <tr>
            <td width="100%" colspan="2"><p align="center">
                <input name="B1" type="submit" class="boton" value="Enviar" />
            </p></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><span class="style10"><a href="registro.asp"></a> </span></td>
          </tr>
      </table></th>
    </tr>
  </table>
</form>
</body>
</html>

