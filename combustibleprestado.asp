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
    alert("Escriba s�lo numeros en el campo LITROS");
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
    alert("Escriba s�lo numeros en el campo kilometraje");
    formulario.kilometraje.focus();
    return (false);
  }


  if (formulario.vehiculo.value.length < 1) {
    alert("Escriba el nombre del veh�culo");
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
    alert("Escriba s�lo numeros en el campo cuenta");
    formulario.cuenta.focus();
    return (false);
  }
 
}

//-->
</script>

<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

<% if session("usuario") = ""  then

response.redirect "iniciosesion.html"

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
<form id="form1" name="form1" method="post" action="altavalecom.asp" onSubmit = "return validar(this)">
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td align="center" bgcolor="#0000FF"><span class="style1"><font color="#FFFFFF">Solicitud para Vales de Combustible para Veh&igrave;culo Prestado</font></span></td>
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
          <td width="50%" align="right">Veh&igrave;culo Prestado</td>
          <td width="50%"><label>
          
          <br />
		  
 <select name="vehiculo" id="vehiculo">
<option value="PM.001">PM.001</option>
<option value="PM.002">PM.002</option>
<option value="PM.003">PM.003</option>
<option value="PM.004">PM.004</option>
<option value="PM.005">PM.005</option>
<option value="PM.006">PM.006</option>
<option value="PM.007">PM.007</option>
<option value="PM.008">PM.008</option>
<option value="PM.009">PM.009</option>
<option value="PM.010">PM.010</option>
<option value="PM.011">PM.011</option>
<option value="PM.012">PM.012</option>
<option value="PM.013">PM.013</option>
<option value="PM.014">PM.014</option>
<option value="PM.015">PM.015</option>
<option value="PM.016">PM.016</option>	 
<option value="PM.017">PM.017</option>
<option value="PM.018">PM.018</option>
<option value="PM.019">PM.019</option>
<option value="PM.020">PM.020</option>	 
<option value="PM.021">PM.021</option>
<option value="PM.022">PM.022</option>
<option value="PM.023">PM.023</option>
<option value="PM.024">PM.024</option>
<option value="PM.025">PM.025</option>
<option value="PM.026">PM.026</option>
<option value="PM.027">PM.027</option>
<option value="PM.028">PM.028</option>
<option value="PM.029">PM.029</option>
<option value="PM.030">PM.030</option>
<option value="PM.031">PM.031</option>
<option value="PM.032">PM.032</option>
<option value="PM.033">PM.033</option>
<option value="PM.034">PM.034</option>
<option value="PM.035">PM.035</option>
<option value="PM.036">PM.036</option>
<option value="PM.037">PM.037</option>
<option value="PM.039">PM.039</option>
<option value="PM.040">PM.040</option>
<option value="PM.041">PM.041</option>
<option value="PM.042">PM.042</option>
<option value="PM.043">PM.043</option>
<option value="PM.044">PM.044</option>
<option value="PM.045">PM.045</option>
<option value="PM.046">PM.046</option>
<option value="PM.047">PM.047</option>
<option value="PM.048">PM.048</option>
<option value="PM.049">PM.049</option>
<option value="PM.050">PM.050</option>
<option value="PM.051">PM.051</option>
<option value="PM.052">PM.052</option>
<option value="PM.053">PM.053</option>
<option value="PM.054">PM.054</option>
<option value="PM.055">PM.055</option>
<option value="PM.056">PM.056</option>
<option value="PM.057">PM.057</option>
<option value="PM.058">PM.058</option>
<option value="PM.059">PM.059</option>
<option value="PM.061">PM.061</option>
<option value="PM.062">PM.062</option>
<option value="PM.063">PM.063</option>
<option value="PM.064">PM.064</option>
<option value="PM.065">PM.065</option>
<option value="PM.066">PM.066</option>
<option value="PM.067">PM.067</option>
<option value="PM.068">PM.068</option>
<option value="PM.069">PM.069</option>
<option value="PM.070">PM.070</option>
<option value="PM.071">PM.071</option>
<option value="PM.072">PM.072</option>
<option value="PM.073">PM.073</option>
<option value="PM.074">PM.074</option>
<option value="PM.075">PM.075</option>
<option value="PM.076">PM.076</option>
<option value="PM.077">PM.077</option>
<option value="PM.078">PM.078</option>
<option value="PM.079">PM.079</option>
<option value="PM.080">PM.080</option>
<option value="PM.081">PM.081</option>
<option value="PM.082">PM.082</option>
<option value="PM.083">PM.083</option>
<option value="PM-084">PM-084</option>
<option value="PM-085">PM-085</option>
<option value="PM-086">PM-086</option>
<option value="PM-087">PM-087</option>
<option value="PM-088">PM-088</option>
<option value="PM-089">PM-089</option>
<option value="PM-090">PM-090</option>
<option value="PM-091">PM-091</option>
<option value="PM-092">PM-092</option>
<option value="PM-093">PM-093</option>
<option value="PM-094">PM-094</option>
<option value="PM-095">PM-095</option>
<option value="PM-096">PM-096</option>
<option value="PM-097">PM-097</option>
<option value="PM-098">PM-098</option>
<option value="PM-099">PM-099</option>
<option value="PM-100">PM-100</option>
<option value="PM-101">PM-101</option>
<option value="PM-102">PM-102</option>
<option value="PM-103">PM-103</option>
<option value="PM-104">PM-104</option>
<option value="PM-105">PM-105</option>
<option value="PM-106">PM-106</option>
<option value="PM-107">PM-107</option>
<option value="PM-108">PM-108</option>
<option value="PM-109">PM-109</option>
<option value="PM-110">PM-110</option>
<option value="PM-111">PM-111</option>
<option value="PM-112">PM-112</option>
<option value="PM-113">PM-113</option>
<option value="PM-114">PM-114</option>
<option value="PM-115">PM-115</option>
<option value="PM-116">PM-116</option>
<option value="PM-117">PM-117</option>
<option value="PM-118">PM-118</option>
<option value="MOTOCONFORMADORA CATERPILLAR">MOTOCONFORMADORA CATERPILLAR</option>
 </select>
		   
		  
          </label></td>
        </tr>
        <tr><SCRIPT>
  window.alert("AVISO: Se les informa que todos los veh�culos deber�n de pasar a verificaci�n. En caso de infracci�n, el director del departamento deber� de pagar la infracci�n. ATENTAMENTE: OFICIALIA MAYOR");
</SCRIPT>
          <td align="right">Kilometraje actual de la unidad </td>
          <td><label>
            <input name="kilometraje" type="text" id="kilometraje" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Lugar a Visitar </td>
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
          <%response.Write(por&"/"&por2&"/"&por3)%>
</label>
            <label></label>
            <label></label>
            <input name="dia" type="hidden" id="dia" value="<%=por%>"/>
            <input name="hora" type="hidden" id="hora" value="<%=por3&por2&por&pus
		  %>"/>
            <%
		  response.write("Hora: "&ko)
		  %>          </td>
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
              <option value="Gasolina" selected="selected">Gasolina Magna</option>
              <option value="Diesel">Diesel</option>
              <option value="Gas">Gas LP</option>

            </select>
          </label></td>
        </tr>
        <tr>
          <td align="right">Cuenta</td>
          <td><label>
            <input type="text" name="cuenta" id="cuenta" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Enviar Solicituda</td>
          <td><input name="Enviar" type="submit" id="Enviar" value="Enviar" /></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>