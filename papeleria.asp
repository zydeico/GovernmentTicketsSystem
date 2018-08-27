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
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo1.value;
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
    alert("Escriba sólo letras");
    formulario.articulo1.focus();
    return (false);
  }
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo2.value;
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
    alert("Escriba sólo letras");
    formulario.articulo2.focus();
    return (false);
  }
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo3.value;
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
    alert("Escriba sólo letras");
    formulario.articulo3.focus();
    return (false);
  }
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo4.value;
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
    alert("Escriba sólo letras");
    formulario.articulo4.focus();
    return (false);
  }
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo5.value;
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
    alert("Escriba sólo letras");
    formulario.articulo5.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo6.value;
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
    alert("Escriba sólo letras");
    formulario.articulo6.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo7.value;
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
    alert("Escriba sólo letras");
    formulario.articulo7.focus();
    return (false);
  }
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo8.value;
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
    alert("Escriba sólo letras");
    formulario.articulo8.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo9.value;
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
    alert("Escriba sólo letras");
    formulario.articulo9.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo10.value;
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
    alert("Escriba sólo letras");
    formulario.articulo10.focus();
    return (false);
  }
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo11.value;
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
    alert("Escriba sólo letras");
    formulario.articulo11.focus();
    return (false);
  }
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo12.value;
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
    alert("Escriba sólo letras");
    formulario.articulo12.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo13.value;
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
    alert("Escriba sólo letras");
    formulario.articulo13.focus();
    return (false);
  }
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo14.value;
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
    alert("Escriba sólo letras");
    formulario.articulo14.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo15.value;
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
    alert("Escriba sólo letras");
    formulario.articulo15.focus();
    return (false);
  }
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo16.value;
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
    alert("Escriba sólo letras");
    formulario.articulo16.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo17.value;
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
    alert("Escriba sólo letras");
    formulario.articulo17.focus();
    return (false);
  }
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo18.value;
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
    alert("Escriba sólo letras");
    formulario.articulo18.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo19.value;
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
    alert("Escriba sólo letras");
    formulario.articulo19.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo20.value;
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
    alert("Escriba sólo letras");
    formulario.articulo20.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo21.value;
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
    alert("Escriba sólo letras");
    formulario.articulo21.focus();
    return (false);
  }
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo22.value;
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
    alert("Escriba sólo letras");
    formulario.articulo22.focus();
    return (false);
  }
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo23.value;
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
    alert("Escriba sólo letras");
    formulario.articulo23.focus();
    return (false);
  }
  
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo24.value;
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
    alert("Escriba sólo letras");
    formulario.articulo24.focus();
    return (false);
  }
  
  
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo25.value;
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
    alert("Escriba sólo letras");
    formulario.articulo25.focus();
    return (false);
  }
  
  
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo26.value;
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
    alert("Escriba sólo letras");
    formulario.articulo26.focus();
    return (false);
  }
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo27.value;
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
    alert("Escriba sólo letras");
    formulario.articulo27.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo28.value;
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
    alert("Escriba sólo letras");
    formulario.articulo28.focus();
    return (false);
  }
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo29.value;
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
    alert("Escriba sólo letras");
    formulario.articulo29.focus();
    return (false);
  }
  
  
  
  
  var checkOK = "asdfghjklñqwertyuiopzxcvbnmASDFGHJKLÑQWERTYUIOPZXCVBNM0123456789 ()/";
  var checkStr = formulario.articulo30.value;
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
    alert("Escriba sólo letras");
    formulario.articulo30.focus();
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
<% if session("usuario") = ""  then

response.redirect "index.asp"

end if

if session("usuario") = "combuexpress"  then

response.redirect "teso.asp"

end if




		  rocko = session("usuario")



 


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="papeleria2.asp" onSubmit = "return validar(this)">
  <table width="600" border="0" align="center">
   <tr>
      <td width="20%" align="center">&nbsp;</td>
      <td width="80%" align="center">Requisición de Papelería</td>
    </tr>
    <tr>
      <td width="20%" align="center">Cantidad</td>
      <td width="80%" align="center">Artículo</td>
    </tr>
 
    <tr>
      <td align="center"><input name="cantidad1" type="text" id="cantidad1" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo1" type="text" id="articulo1" size="60" /></td>
    </tr>
    <tr>
      <td align="center"><input name="cantidad2" type="text" id="cantidad2" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo2" type="text" id="articulo2" size="60" /></td>
    </tr>
    <tr>
      <td align="center"><input name="cantidad3" type="text" id="cantidad3" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo3" type="text" id="articulo3" size="60" /></td>
    </tr>
    <tr>
      <td align="center"><input name="cantidad4" type="text" id="cantidad4" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo4" type="text" id="articulo4" size="60" /></td>
    </tr>
    <tr>
      <td align="center"><input name="cantidad5" type="text" id="cantidad5" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo5" type="text" id="articulo5" size="60" /></td>
    </tr>
    <tr>
      <td align="center"><input name="cantidad6" type="text" id="cantidad6" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo6" type="text" id="articulo6" size="60" /></td>
    </tr>
    <tr>
      <td align="center"><input name="cantidad7" type="text" id="cantidad7" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo7" type="text" id="articulo7" size="60" /></td>
    </tr>
    <tr>
      <td align="center"><input name="cantidad8" type="text" id="cantidad8" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo8" type="text" id="articulo8" size="60" /></td>
    </tr>
    
    <tr>
      <td align="center"><input name="cantidad9" type="text" id="cantidad9" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo9" type="text" id="articulo9" size="60" /></td>
    </tr>
    <tr>
      <td align="center"><input name="cantidad10" type="text" id="cantidad10" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo10" type="text" id="articulo10" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad11" type="text" id="cantidad11" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo11" type="text" id="articulo11" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad12" type="text" id="cantidad12" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo12" type="text" id="articulo12" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad13" type="text" id="cantidad13" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo13" type="text" id="articulo13" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad14" type="text" id="cantidad14" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo14" type="text" id="articulo14" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad15" type="text" id="cantidad15" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo15" type="text" id="articulo15" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad16" type="text" id="cantidad16" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo16" type="text" id="articulo16" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad17" type="text" id="cantidad17" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo17" type="text" id="articulo17" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad18" type="text" id="cantidad18" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo18" type="text" id="articulo18" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad19" type="text" id="cantidad19" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo19" type="text" id="articulo19" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad20" type="text" id="cantidad20" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo20" type="text" id="articulo20" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad21" type="text" id="cantidad21" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo21" type="text" id="articulo21" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad22" type="text" id="cantidad22" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo22" type="text" id="articulo22" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad23" type="text" id="cantidad23" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo23" type="text" id="articulo23" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad24" type="text" id="cantidad24" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo24" type="text" id="articulo24" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad25" type="text" id="cantidad25" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo25" type="text" id="articulo25" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad26" type="text" id="cantidad26" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo26" type="text" id="articulo26" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad27" type="text" id="cantidad27" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo27" type="text" id="articulo27" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad28" type="text" id="cantidad28" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo28" type="text" id="articulo28" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad29" type="text" id="cantidad29" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo29" type="text" id="articulo29" size="60" /></td>
    </tr>
<tr>
      <td align="center"><input name="cantidad30" type="text" id="cantidad30" size="5" maxlength="5" /></td>
      <td align="center"><input name="articulo30" type="text" id="articulo30" size="60" /></td>
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