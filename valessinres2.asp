

<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

<% if session("usuario") = ""  then

response.redirect "index.asp"

end if

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
<form id="form1" name="form1" method="post" action="kuko2.asp" onSubmit = "">
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td align="center" bgcolor="#FF0000"><span class="style1">Solicitud para Vales de Combustible</span></td>
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
          <td width="50%" align="right">Veh&igrave;culo</td>
          <td width="50%"><label>
          
          <input type="text" name="vehiculo" id="vehiculo" />
          <br />
          </label></td>
        </tr>
        <tr>
          <td align="right">N&uacute;mero de Vale</td>
          <td><label>
            <input name="vale2" type="text" id="vale2" />
          </label></td>
        </tr>
        <tr>
          <td align="right">N&uacute;mero de Factura</td>
          <td><label>
          <input name="factura" type="text" id="factura" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Costo</td>
          <td><label>
            <input name="costo" type="text" id="costo" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Litros</td>
          <td><label>
            <input name="litros" type="text" id="litros" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Litros surtidos</td>
          <td><label>
            <input name="litros2" type="text" id="litros2" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Fecha</td>
          <td><label></label><label>
            <input type="text" name="fecha" id="fecha" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Responsable</td>
          <td><label>
            <input type="text" name="responsable" id="responsable" />
          </label></td>
        </tr>
        <tr>
          <td align="right">&nbsp;</td>
          <td><label></label></td>




        </tr>
        <tr>
          <td align="right">&nbsp;</td>
          <td><label></label></td>
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
