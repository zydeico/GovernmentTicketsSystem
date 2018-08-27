<SCRIPT LANGUAGE="JavaScript"> <!--
function validar(formulario) {

var checkOK = "0123456789";
  var checkStr = formulario.cantidad1.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad1.focus();
    return (false);
  }
  
  
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad2.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad2.focus();
    return (false);
  }
  
  
  
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad3.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad3.focus();
    return (false);
  }
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad4.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad4.focus();
    return (false);
  }
  
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad5.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad5.focus();
    return (false);
  }
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad6.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad6.focus();
    return (false);
  }
  
  
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad7.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad7.focus();
    return (false);
  }
  
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad8.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad8.focus();
    return (false);
  }
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad9.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad9.focus();
    return (false);
  }
  
  
  
  var checkOK = "0123456789";
  var checkStr = formulario.cantidad10.value;
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
    alert("Escriba sólo numeros la cantidad");
    formulario.cantidad10.focus();
    return (false);
  }
  
}

//-->
</script>
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="insen2.asp" onSubmit = "return validar(this)">
  <table width="600" border="0" align="center">
   <tr>
      <td width="20%" align="center">&nbsp;</td>
      <td width="80%" align="center">Requisición de Papelería</td>
    </tr>
    <tr>
      <td width="20%" align="center">Datos</td>
      <td width="80%" align="center" bgcolor="#666666">&nbsp;</td>
    </tr>
 
    <tr>
      <td align="center">Apellido Paterno</td>
      <td align="center"><input name="apellido" type="text" id="apellido" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Apellido Materno</td>
      <td align="center"><input name="apellido2" type="text" id="apellido2" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Nombre</td>
      <td align="center"><input name="nombre" type="text" id="nombre" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Curp</td>
      <td align="center"><input name="curp" type="text" id="curp" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Domicilio</td>
      <td align="center" bgcolor="#666666">&nbsp;</td>
    </tr>
    <tr>
      <td align="center">Calle</td>
      <td align="center"><input name="calle" type="text" id="calle" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Colonia</td>
      <td align="center"><input name="col" type="text" id="col" size="60" /></td>
    </tr>
    <tr>
      <td align="center">CP</td>
      <td align="center"><input name="cp" type="text" id="cp" size="60" /></td>
    </tr>
    
    <tr>
      <td align="center">Mpio o delegación</td>
      <td align="center"><input name="mpio" type="text" id="mpio" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Entidad Federativa</td>
      <td align="center"><input name="entidad" type="text" id="entidad" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Teléfono</td>
      <td align="center"><input name="telefono" type="text" id="telefono" size="60" /></td>
    </tr>
    <tr>
      <td align="center">En caso de a.</td>
      <td align="center" bgcolor="#999999">&nbsp;</td>
    </tr>
    <tr>
      <td align="center">Nombre</td>
      <td align="center"><input name="nombre2" type="text" id="nombre2" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Teléfono</td>
      <td align="center"><input name="telefono2" type="text" id="telefono2" size="60" /></td>
    </tr>
    <tr>
      <td align="center">Fecha</td>
      <td align="center"><label>
        <input type="text" name="fecha" id="fecha" />
      </label></td>
    </tr>
    <tr>
      <td align="center"><label>
        <input type="reset" name="button2" id="button2" value="Borrar" />
      </label></td>
      <td align="center"><label>
        <input type="submit" name="button" id="button" value="Enviar" />
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>
