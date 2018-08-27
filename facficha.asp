<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>INGRESAR FACTURAS</title>
</head>
<% 

rocko = session("usuario")





response.write(rocko)

if rocko = "tesoreria" or rocko = "OficialiaMayor"then
ok = 1
else
ok = 0
response.Redirect("tipovale.asp")
end if
 
response.write(ok)
%>
<body>

<form id="form1" name="form1" method="post" action="altafacficha.asp">
  <table width="80%" border="0" align="center" cellpadding="4" cellspacing="4" bgcolor="#999999">
    <tr>
      <td align="right" bgcolor="#FFFFFF"><strong>FOLIO DE LA FICHA 
          <label></label>
      </strong></td>
      <td align="left" bgcolor="#FFFFFF"><input name="folio" type="text" id="folio" value="" /></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF"><strong>NUMERO DE FACTURA 
          <label></label>
      </strong></td>
      <td align="left" bgcolor="#FFFFFF"><input name="factura" type="text" id="factura" /></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF"><strong>COSTO DE LA FICHA </strong></td>
      <td align="left" bgcolor="#FFFFFF"><label>
        <input name="costo" type="text" id="costo" />
      </label></td>
    </tr>
     <tr>
      <td align="right" bgcolor="#FFFFFF"><strong>FACTURA 2</strong></td>
      <td align="left" bgcolor="#FFFFFF"><label>
      <input type="text" name="factura2" id="factura2" />
      </label></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF"><label>
        <input name="Enviar" type="submit" id="Enviar" value="Enviar" />
      </label></td>
      <td align="center" bgcolor="#FFFFFF"><% 

rocko = session("usuario")





response.write(rocko)

if rocko = "Tesoreria" then
ok = 1
else
ok = 0
end if
 
response.write(ok)
%>&nbsp;</td>
    </tr>
  </table>
  <p><%
  
  xxo = request.querystring("folio")


di = request.form("factura")
c = request.form("costo")



 'SQL = "UPDATE `combustible` SET `factura` = '"&di&"', `costov` = '"&c&"' WHERE `id` = '"&xxo&"' LIMIT 1"

 
 
SQL2 ="SELECT * FROM `fichas` WHERE `id` = '"&xxo&"'"
 
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"

'Set rs = conn.Execute(SQL)



if request.QueryString("folio") = "" then
po = 0
else
Set rs2 = conn.Execute(SQL2)

'response.Redirect("reportes.asp")
response.Write("Cambios hechos")
'response.redirect("")
set conn=nothing
  
  %>&nbsp;</p>
  <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
    <tr>
      <td height="21"  align="left" valign="bottom">VEHICULO</td>
      <td align="left" valign="bottom"><%response.write(rs2("vehiculo"))%></td>
    </tr>
    <tr>
      <td align="left" valign="bottom">&nbsp;</td>
      <td align="left" valign="bottom">&nbsp;</td>
    </tr>
    <tr>
      <td align="left" valign="bottom">LUGAR</td>
      <td align="left" valign="bottom"><%response.write(rs2("lugar"))%></td>
    </tr>
    <tr>
      <td align="left" valign="bottom">ASUNTO</td>
      <td align="left" valign="bottom"><%response.write(rs2("asunto"))%></td>
    </tr>
    <tr>
      <td align="left" valign="bottom">&nbsp;</td>
      <td align="left" valign="bottom">&nbsp;</td>
    </tr>
    <tr>
      <td align="left" valign="bottom">RESPONSABLE</td>
      <td align="left" valign="bottom"><%response.write(rs2("re"))%></td>
    </tr>
    <tr>
      <td align="left" valign="bottom">FECHA</td>
      <td align="left" valign="bottom"><%response.write(rs2("fe"))%></td>
    </tr>
    <tr>
      <td align="left" valign="bottom">DEPARTAMENTO</td>
      <td align="left" valign="bottom"><%response.write(rs2("depto"))%></td>
    </tr>
    <tr>

      <td  align="left" valign="bottom">FOLIO</td>
      <td align="left" valign="bottom"><%response.write(rs2("id"))%></td>
    </tr>
    <tr>
      <td align="left" valign="bottom">CLAVE</td>
      <td align="left" valign="bottom"><%response.write(rs2("clave"))%></td>
    </tr>
    <tr>
      <td align="left" valign="bottom">FACTURA</td>
      <td align="left" valign="bottom"><%response.write(rs2("factura"))%></td>
    </tr>
    <tr>
      <td align="left" valign="bottom">COSTO</td>
      <td align="left" valign="bottom">$
        <%response.write(rs2("costo"))
		
		
		end if%></td>
		
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>
