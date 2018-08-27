<SCRIPT LANGUAGE="JavaScript"> <!--
function validar(formulario) {
var checkOK = "0123456789.";
  var checkStr = formulario.litros.value;
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
    alert("Escriba sólo numeros en el campo LITROS");
    formulario.litros.focus();
    return (false);
  }
var checkOK = "0123456789";
  var checkStr = formulario.kilometraje.value;
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
    alert("Escriba sólo numeros en el campo kilometraje");
    formulario.kilometraje.focus();
    return (false);
  }


  if (formulario.vehiculo.value.length < 1) {
    alert("Escriba el nombre del vehìculo");
    formulario.vehiculo.focus();
    return (false);
	 
  }
    if (formulario.kilometraje.value.length < 1) {
    alert("Escriba el kilometraje actual de la unidad");
    formulario.kilometraje.focus();
    return (false);
	
  }
  
  if (formulario.lugar.value.length < 1) {
    alert("Escriba el o los lugares a visitar");
    formulario.lugar.focus();
    return (false);
	
  }
    if (formulario.asunto.value.length < 1) {
    alert("Escriba el asunto");
    formulario.asunto.focus();
    return (false);
	
  }
  if (formulario.litros.value.length < 1) {
    alert("Escriba la cantidad de litros");
    formulario.litros.focus();
    return (false);
	 
  }
  if (formulario.cuenta.value.length < 5) {
    alert("Escriba la cantidad de Cuenta");
    formulario.cuenta.focus();
    return (false);
	 
  }
  var checkOK = "0123456789";
  var checkStr = formulario.cuenta.value;
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
    alert("Escriba sólo numeros en el campo cuenta");
    formulario.cuenta.focus();
    return (false);
  }

  
 
}

//-->
</script>

<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

<% if session("usuario") = ""  then

response.redirect "index.asp"

end if

o = request.form("hola")


 ko = time()
		 dim pus
		 dim pus2
		 dim pus3
		 dim limiteh
		 dim limitem
		 
ko2 = date()
por = day(ko2)
pr2= month(ko2)
pr3= year(ko2)
pus= hour(ko)
pus2 = minute(ko)
pus3 = second(ko)
resto = 0
v = request.form("vehiculo")

k = request.form("kilometraje")

tyu = pus&pus2


ytyt = 1530
limiteh = 15
limitem = 30
kokito = liminteh & limitem

if pus2+pus > limiteh+limitem then
response.Write("-----"&tyu&"------Fuera de horario------")
if pus > 14 then
response.Write("-----"&tyu&"------Fuera de horario------")
'response.Redirect("fueradehorario.asp")
end if
end if






%>
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
.style4 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
.style39 {color: #FF0000}
.style40 {color: #FF0000; font-weight: bold; }
.style43 {font-size: 24px; font-style: italic; }
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="kuko.asp" onSubmit = "return validar(this)">
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td align="center" bgcolor="#00FF00"><span class="style1">Solicitud para Vales de Combustible</span></td>
    </tr>
  </table>
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td><p align="center" class="style39 style37 style41"><strong>AVISO IMPORTANTE </strong></p>
      <p><span class="style39">A partir del lunes 19 de Febrero y para  brindarte un mejor servicio la hora l&iacute;mite para</span><span class="style40"> <span class="style43">mandar y recoger</span> </span><span class="style39">vales de combustible es  a las 03:30 p.m. por  su comprensi&oacute;n gracias.</span></p></td>
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
          <td align="right">&nbsp;</td>
          <td><label></label></td>
        </tr>
        <tr><SCRIPT>
  window.alert("AVISO: Se les informa que todos los vehículos deberán de pasar a verificación. En caso de infracción, el director del departamento deberá de pagar la infracción. ATENTAMENTE: OFICIALIA MAYOR");
</SCRIPT>
          <td align="right">Caracter&iacute;sticas</td>
          <td><label>
            <input name="lugar" type="text" id="lugar" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Asunto</td>
          <td><label>
            <input name="asunto" type="text" id="asunto" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Litros</td>
          <td><label>
            <input name="litros" type="text" id="litros" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Responsable</td>
          <td><label>
		   <%
		   user = session("usuario")
 SQL = "Select * from `usuarios` where `usuario` = '"&user&"'"
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"
Set rs = conn.Execute(SQL)

	while not rs.eof
	  
		  us = rs("nombre")
		  dir = rs("direccion")
		 ko = time()
		 
ko2 = date()
por = day(ko2)
por2=month(ko2)
por3=year(ko2)
pus= hour(ko)
pus2 = minute(ko)
pus3 = second(ko)



%>
 <input name="responsable" type="hidden" id="responsable" value="<%=us%>" />
         </label><%
		 response.Write(us)
		 
		 %></td>
        </tr>
        <tr>
          <td align="right">Fecha</td>
          <td><label>
            <input type="text" name="fecha" id="fecha" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Departamento</td>
          <td><input name="departamento" type="hidden" id="departamento" value="<%=dir%>"/>
		  <%
		 response.Write(dir)
		 
		 %>		  </td>



<%

           rs.movenext
	 	wend
	
 
		set conn=nothing
		
		%>
        </tr>
        <tr>
          <td align="right">Tipo de Combustible </td>
          <td><label>
            <select name="comb" id="comb">
              <option value="Gasolina" selected="selected">Gasolina</option>
              <option value="Diesel">Diesel</option>
              <option value="Gas">Gas</option>
              <%
			  if rocko = "presidencia" or rocko = "oficialia" then
			  %>
              <option value="Premium" selected="selected">Gasolina Premium</option>
              <%
			  end if
			  %>
            </select>
            
            
          </label></td>
        </tr>
        <tr>
          <td align="right">Enviar Solicitud </td>
          <td><input name="Enviar" type="submit" id="Enviar" value="Enviar" /></td>
        </tr>
        <tr>
          <td align="right"><%if rocko = "deportes" then %>
            VALE PARA DIA SIGUIENTE
              <%
	   end if
	  
	  %>
            <%if rocko = "seguridad" then %>
            VALE PARA DIA SIGUIENTE
            <%
	   end if
	  
	  %>
            <%if rocko = "obras" then %>
            VALE PARA DIA SIGUIENTE
            <%
	   end if
	  
	  %>
  <%if rocko = "servicios" then %>
            VALE PARA DIA SIGUIENTE
            <%
	   end if
	  
	  %>
            <%if rocko = "civil" then %>
VALE PARA DIA SIGUIENTE
<%
	   end if
	  
	  %></td>
          <td><label>
            <%if rocko = "seguridad" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
            <%if rocko = "obras" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
            <%if rocko = "servicios" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
            <%if rocko = "deportes" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
            <%if rocko = "civil" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
</label></td>
        </tr>
        <tr>
          <td align="right"><%if rocko = "deportes" then %>
            VALE PARA DOMINGO
            <%
	   end if
	  
	  %>
            <%if rocko = "seguridad" then %>
            VALE PARA DOMINGO
            <%
	   end if
	  
	  %>
            <%if rocko = "obras" then %>
            VALE PARA DOMINGO
  <%
	   end if
	  
	  %>
  <%if rocko = "civil" then %>
VALE PARA DOMINGO
<%
	   end if
	  
	  %>
  <%if rocko = "servicios" then %>
            VALE PARA DOMINGO          
            <%
	   end if
	  
	  %></td>
          <td><label>
            <%if rocko = "seguridad" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
            <%if rocko = "obras" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
            <%if rocko = "servicios" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
            <%if rocko = "deportes" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
            <%if rocko = "civil" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
</label></td>
        </tr>
        <tr>
          <td align="right"><%if rocko = "deportes" then %>
            Vale para hoy
            <%
	   end if
	  
	  %>
            <%if rocko = "seguridad" then %>
            Vale para hoy
            <%
	   end if
	  
	  %>
            <%if rocko = "civil" then %>
Vale para hoy
<%
	   end if
	  
	  %>
            <%if rocko = "obras" then %>
            Vale para hoy
  <%
	   end if
	  
	  %>
  <%if rocko = "servicios" then %>
            Vale para hoy
  <%
	   end if
	  
	  %></td><td><label>
            <%if rocko = "seguridad" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
            <%if rocko = "obras" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
            <%if rocko = "servicios" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
            <%if rocko = "deportes" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
            <%if rocko = "civil" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
</label></td>
        </tr>
        <tr>
          <td align="right"><%if rocko = "servicios" then %>
            VALE PARA LUNES TEMPRANO
              <%
	   end if
	  
	  %>
              <%if rocko = "obras" or rocko = "seguridad" then %>
VALE PARA LUNES TEMPRANO
<%
	   end if
	  
	  %></td>
          <td><label>
            <%if rocko = "obras" then %>
            <input name="fin" type="radio" value="3" />
            <%
	   end if
	  
	  %>
            <%if rocko = "servicios" then %>
            <input name="fin" type="radio" value="3" />
            <%
	   end if
	  
	  %>
      
      <%if rocko = "seguridad" then %>
            <input name="fin" type="radio" value="3" />
            <%
	   end if
	  
	  %>
      
      
</label></td>
        </tr>
        <tr>
          <td align="right">CUENTA PRESUPUESTAL</td>
          <td><label>
            <input type="text" name="cuenta" id="cuenta" />
          </label></td>
        </tr>
      </table></td>
    </tr>
  </table>
  <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><%if rocko = "deportes" then %>
          <span class="style4">Para vale de sabado o domingo poner el kilometraje actual de la unidad</span>
          <%
	   end if
	  
	  %>
        <%if rocko = "seguridad" then %>
        
        <span class="style4">Para vale de sabado o domingo poner el kilometraje actual de la unidad</span>
        <%
	   end if
	  
	  %>
        
        
        <%if rocko = "obras" then %>
        <span class="style4">
          Para vale de sabado o domingo poner el kilometraje actual de la unidad</span>
        <%
	   end if
	  
	  %>
        
        
        
        &nbsp;
        <%if rocko = "servicios" then %>
        <span class="style4">Para vale de sabado o domingo poner el kilometraje actual de la unidad</span>
  <%
	   end if
	  
	  %>
  &nbsp;</td></tr>
  </table>
</form>
</body>
</html>
