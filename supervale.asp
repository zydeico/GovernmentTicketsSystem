<SCRIPT LANGUAGE="JavaScript"> <!--
function validar(formulario) {
var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789. ";
  var checkStr = formulario.can1.value;
  var allValid = true;
  for (i = 0; i < checkStr.length; i++) {
    ch = checkStr.charAt(i);
    for (j = 0; j < checkOK.length; j++)
      if (ch == checkOK.charAt(j))
        break;
    if (j == checkOK.length) {
      allValid = false;
      break;
    }
  }
  if (!allValid) {
    alert("Escriba sólo numero y unidad en el campo Cantidad");
    formulario.can1.focus();
    return (false);
  }



  if (formulario.cuenta.value.length < 6) {
    alert("Escriba la cuenta presupuestal");
    formulario.cuenta.focus();
    return (false);
	 
  }
  if (formulario.cuenta2.value.length < 6) {
    alert("Escriba el nombre de la cuenta presupuestal");
    formulario.cuenta2.focus();
    return (false);
	 
  }
  
  if (formulario.can1.value.length < 1) {
    alert("Escriba la cantidad y artículo");
    formulario.can1.focus();
    return (false);
	 
  }
    
    if (formulario.recibio.value.length < 1) {
    alert("Escriba el ASUNTO");
    formulario.recibio.focus();
    return (false);
	 
  }
  
   
  

  
 
}

//-->
</script>

<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

<% if session("usuario") = ""  then

response.redirect "index.asp"

end if


  rocko = session("usuario")



 if rocko = "bomberos" then
		 response.Redirect("combustible.asp")
		  end if


o = request.form("hola")%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
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
<form id="formulario" name="formulario" method="post" action="supervale2.asp" onSubmit = "return validar(this)">
<% 
SQL = "Select * from `proveedores` order by tipo"

  user = session("usuario")
 SQL2 = "Select * from `usuarios` where `usuario` = '"&user&"'"
  
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)
Set rs2 = conn.Execute(SQL2)

%>
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td align="center" bgcolor="#0000FF"><span class="style1"><font color="#FFFFFF">VALE DE PRODUCTO</font></span></td>
    </tr>
  </table>
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td><table width="800" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td width="50%" align="right">&nbsp;</td>
          <td width="50%"><label></label></td>
        </tr>
        <tr>
          <td align="right">Responsable</td>
          <td>
          
          
          <label>
		   <%
		  

	while not rs2.eof
	  
		  us = rs2("nombre")
		  dir = rs2("direccion")
		 rs2.movenext
		 wend
%>
 <input name="responsable" type="hidden" id="responsable" value="<%=us%>" />
         </label><%
		 response.Write(us)
		 
		 %>          </td>
        </tr>
        <tr>
          <td align="right"><label>Departamento</label></td>
          <td><label><input name="departamento" type="hidden" id="departamento" value="<%=dir%>"/>
		  <%
		 response.Write(dir)
		 
		 %>		  </label></td>
        </tr>
        <tr>
          <td align="right">CUENTA a la que se cargara la factura</td>
          <td><label>
          <input type="text" name="cuenta" id="cuenta" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Nombre de la Cuenta</td>
          <td><label>
          <input type="text" name="cuenta2" id="cuenta2" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Negocio a donde va el Vale</td>
          <td><label>
            <select name="nego" id="nego">
            
            <%while not rs.eof%>
        <option value="<%=rs("id")%>"><%=rs("tipo")%>---<%=rs("nombre")%></option>
        <%rs.movenext
		wend
  %>
            </select>
          </label></td>
        </tr>
      <tr>
          <td align="right">Asunto para el cual se usaran los Articulos </td>
          <td><input type="text" name="recibio" id="recibio" /></td>
        </tr>
        <tr>
          <td align="right">Cantidad y Unidad</td>
          <td>Art&iacute;culo</td>
        </tr>
        <tr>
          <td align="right"><label>
            <input name="can1" type="text" id="can1" size="4" maxlength="5" />
          </label></td>
          <td><label>
            <input type="text" name="art1" id="art1" maxlength="50"/>
          </label></td>
        </tr>
        <tr>
          <td align="right"><input name="can2" type="text" id="can2" size="4" maxlength="5" /></td>
          <td><label>
            <input type="text" name="art2" id="art2" maxlength="50"/>
          </label></td>
        </tr>
        <tr>
          <td align="right"><input name="can3" type="text" id="can3" size="4" maxlength="5" /></td>
          <td><label>
            <input type="text" name="art3" id="art3" maxlength="50"/>
          </label></td>
        </tr>
        <tr>
          <td align="right"><input name="can4" type="text" id="can4" size="4" maxlength="5" /></td>
          <td><label>
            <input type="text" name="art4" id="art4" maxlength="50"/>
          </label></td>
        </tr>
        <tr>
          <td align="right"><input name="can5" type="text" id="can5" size="4" maxlength="5" /></td>
          <td><label>
            <input type="text" name="art5" id="art5" maxlength="50"/>
          </label></td>
        </tr>
        <tr>
          <td align="right"><input name="can6" type="text" id="can6" size="4" maxlength="5" /></td>
          <td><label>
            <input type="text" name="art6" id="art6" maxlength="50"/>
          </label></td>
        </tr>
        <tr>
          <td align="right"><label></label></td>
          <td><label></label></td>
        </tr>
        <tr>
          <td align="right">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"><label></label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right">&nbsp;</td>
          <td><label></label></td>
        </tr>
        <tr>
          <td align="right"><label>
            <input type="submit" name="button" id="button" value="Enviar" />
          </label></td>
          <td><label>
            <input type="reset" name="button2" id="button2" value="Reset" />
          </label></td>
        </tr>
        
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
