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

if (formulario.comision.value.length < 1) {
    alert("Escriba la comision (lugar a visitar)");
    formulario.comision.focus();
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
if (formulario.fechas.value.length < 9) {
    alert("Seleccione la fecha del icono del calendario");
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

response.redirect "iniciosesion.html"

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Combustible</title>
<link href="css/calendario.css" type="text/css" rel="stylesheet">
<script src="inc/calendar.js" type="text/javascript"></script>
<script src="inc/calendar-es.js" type="text/javascript"></script>
<script src="inc/calendar-setup.js" type="text/javascript"></script>

<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
.style4 {
	font-size: 18px;
	font-weight: bold;
	color: #0000FF;
}
.style39 {color: #FF0000}
.style40 {color: #FF0000; font-weight: bold; }
.style43 {font-size: 24px; font-style: italic; }
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="altavalecom2.asp" onSubmit = "return validar(this)">
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td align="center" bgcolor="#0000FF"><span class="style1"><font color="#FFFFFF">Solicitud para Vales de Combustible</font></span></td>
    </tr>
  </table>
   <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td><p align="center" class="style39 style37 style41"><strong>AVISO IMPORTANTE </strong></p>
      <p><span class="style39"><font color="#000099"><font size="+1">A partir del 01 de Septiembre del 2017 y para  brindarte un mejor servicio se requiere tramitar los vales de combustible con </font></font></span><span class="style40"> <span class="style43">anterioridad al d&iacute;a de carga</span> </span><span class="style39"><font color="#000099"><font size="+1">. Los d&iacute;as de carga ser&aacute;n:  <font color="#FF0000">LUNES, MI&Eacute;RCOLES Y VIERNES de 7:00 am a 12:00 pm.</font> Por  su comprensi&oacute;n gracias.</font></font></span></p></td>
    </tr>
  </table>
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td><table width="868" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td width="50%" align="right">Veh&igrave;culo</td>
          <td width="50%"><label>
          
          <br />
		  <%
		  rocko = session("usuario")
		  

  if rocko = "UVEG" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM.029">PM.029</option>
<option value="PM-111">PM-111</option>
          </select>
          <br />
		  <%
		  end if




 if rocko = "Bibliotecas" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM-014">PM-014</option>
          </select>
          <br />
		   <%
		  end if

 if rocko = "CASSA" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<!--<option value="PM-014">PM-014</option>-->
<option value="PM-114">PM-114</option>
<option value="PM.005">PM.005</option>
          </select>
          <br />
		   <%
		  end if



		  if rocko = "AsesorJuridico" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM.006">PM.006</option>
<option value="PM-101">PM-101</option>
          </select>
          <br />
		  
		  <%
		  end if 


			 if rocko = "SecHAyuntamiento" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM-093">PM-093</option>
          </select>
          <br />
		  
		  <%
		  end if


		if rocko = "RegIvan" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->>
<option value="VEHICULO PARTICULAR">VEHICULO PARTICULAR</option>
          </select>
          <br />
		  
		  <%
		  end if

         if rocko = "RegEvelin" then
		 %>
		 <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->
<option value="VEHICULO PARTICULAR">VEHICULO PARTICULAR</option>
          </select>
		  <br />
		  <% 
		  end if
		if rocko = "RegAlicia" then
		 %>
		 <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->
<option value="VEHICULO PARTICULAR">VEHICULO PARTICULAR</option>
          </select>
		  <br />
		  <% 
		  end if
		  if rocko = "RegJorge" then
		 %>
		 <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->
<option value="VEHICULO PARTICULAR">VEHICULO PARTICULAR</option>
          </select>
		  <br />
		  <% 
		  end if
		  
		  if rocko = "RegGustavo" then
		 %>
		 <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->
<option value="VEHICULO PARTICULAR">VEHICULO PARTICULAR</option>
          </select>
		  <br />
		  <% 
		  end if
		  
		  if rocko = "RegAlejandra" then
		 %>
		 <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->
<option value="VEHICULO PARTICULAR">VEHICULO PARTICULAR</option>
          </select>
		  <br />
		  <% 
		  end if
		  
		  if rocko = "RegGisela" then
		 %>
		 <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->
<option value="VEHICULO PARTICULAR">VEHICULO PARTICULAR</option>
          </select>
		  <br />
		  <% 
		  end if
		  
		  if rocko = "RegSantos" then
		 %>
		 <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->
<option value="VEHICULO PARTICULAR">VEHICULO PARTICULAR</option>
          </select>
		  <br />
		  <% 
		  end if
		  

         


                  if rocko = "SindicoMpal" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<!--<option value="PM-093">PM-093</option>-->
          </select>
          <br />
		  
		  <%
		  end if



                    if rocko = "Fiscalizacion" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM.002">PM.002</option>
<!--<option value="PM.077">PM.077</option>-->
          </select>
          <br />
		  
		  <%
		  end if




		  if rocko = "OficialiaMayor" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM.015">PM.015</option>
<option value="PM-107">PM-107</option>
          </select>
          <br />
		  <%                  
		  end if
		  


		  if rocko = "PrevencionDelito" then
		  %>
		   <select name="vehiculo" id="vehiculo">
<option value="PM-100">PM-100</option>
	   </select>
		   <%
		  end if

 if rocko = "EMERGENCIAS066" then
		  %>
		   <select name="vehiculo" id="vehiculo">
<option value="PM-100">PM-100</option>
	   </select>
		   <%
		  end if
			  
	

		  if rocko = "Educacion" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM.042">PM.042</option>
<option value="PM.044">PM.044</option>
<option value="PM.045">PM.045</option>
<option value="PM-094">PM-094</option>
<option value="PM-111">PM-111</option>			  
<option value="PM-113">PM-113</option>
<option value="PLANTA ELECTRICA">PLANTA ELECTRICA</option>
          </select>
          <br />
		   <%
		  end if
		  

		  if rocko = "CasaCultura" then
		  %>
		   <select name="vehiculo" id="vehiculo">
<option value="PM.042">PM.042</option>
<option value="PM.044">PM.044</option>
<option value="PM.045">PM.045</option>
<option value="PM-094">PM-094</option>
<option value="PM-111">PM-111</option>			   
<option value="PLANTA ELECTRICA">PLANTA ELECTRICA</option>
          </select>
          <br />
		   <%
		  end if


		  if rocko = "Contraloria" then
		  %>
<select name="vehiculo" id="vehiculo">
<option value="PM.004">PM.004</option>
<option value="PM.016">PM.016</option>
          </select>
          <br />
		    <%
		  end if



		  
		  if rocko = "SeguridadPublica" then
		  %>
		    <select name="vehiculo" id="vehiculo">
<option value="M-0399">M-0399</option>
<option value="M-0400">M-0400</option>
				<option value="M-2057">M-2057</option>
				<option value="M-2058">M-2058</option>
				<option value="M-2059">M-2059</option>
				<option value="M-0398">M-0398</option>
				<option value="GT286A1">GT286A1</option>
				<option value="GT2856A1">GT285A1</option>
				<option value="GT043A1">GT043A1</option>
				<option value="GT287A1">GT287A1</option>
<option value="D-01">D-01</option>
<option value="P09178">P09178</option>
<option value="P09179">P09179</option>
<option value="P09180">P09180</option>
<option value="P09181">P09181</option>
<option value="00-752">00-752</option>
<option value="00-773">00-773</option>
<option value="00-799">00-799</option>
<option value="03-603">03-603</option>
<option value="03-606">03-606</option>
<option value="03-607">03-607</option>
<option value="03-609">03-609</option>
<option value="03-612">03-612</option>
<option value="03-614">03-614</option>
<option value="03-615">03-615</option>
<option value="03-616">03-616</option>
<option value="03-618">03-618</option>
<option value="03-619">03-619</option>
<option value="03-620">03-620</option>
<option value="03-621">03-621</option>
<option value="03-622">03-622</option>
<option value="03-623">03-623</option>
<option value="03-624">03-624</option>
<option value="03-625">03-625</option>
<option value="03-626">03-626</option>
<option value="03-627">03-627</option>
<option value="03-628">03-628</option>
<option value="03-629">03-629</option>
<option value="03-630">03-630</option>
<option value="03-631">03-631</option>
<option value="03-632">03-632</option>
<option value="03-633">03-633</option>
<option value="03-634">03-634</option>
<option value="03-635">03-635</option>
<option value="03-636">03-636</option>
<option value="03-637">03-637</option>
<option value="03-638">03-638</option>
<option value="03-639">03-639</option>
<option value="03-642">03-642</option>
<option value="03-643">03-643</option>
<option value="PM-100">PM-100</option>
<option value="FAZ-67">FAZ-67</option>
<option value="FAZ-68">FAZ-68</option>
<option value="FAZ-69">FAZ-69</option>
<!--<option value="FAZ-70">FAZ-70</option>
<option value="FAZ-71">FAZ-71</option>-->

<option value="FAZ-75">FAZ-75</option>
<!--<option value="FAZ-74">FAZ-74</option>
<option value="FAZ-73">FAZ-73</option>-->
<option value="FHL-04">FHL-04</option>
<option value="FHL-05">FHL-05</option>
<option value="FHL-06">FHL-06</option>
<option value="FFE-13">FFE-13</option>
<option value="FFE-14">FFE-14</option>
<option value="FFE-15">FFE-15</option>
<option value="04-650">04-650</option>
<option value="GT039A1">GT039A1</option>
<option value="GT040A1">GT040A1</option>
<option value="GT041A1">GT041A1</option>
<option value="GT042A1">GT042A1</option>
<option value="GT044A1">GT044A1</option>
          </select>
          <br />
		    <%
		  end if
		  


 if rocko = "TransitoTransporte" then
		  %>
		    <select name="vehiculo" id="vehiculo">

<option value="PM.012">PM.012</option>
<option value="03-619">03-619</option>
<option value="03-620">03-620</option>
<!--<option value="03-621">03-621</option>-->
<option value="03-622">03-622</option>
<option value="03-631">03-631</option>
<option value="03-632">03-632</option>
<option value="03-634">03-634</option>
<option value="03-636">03-636</option>
<option value="FAZ-73">FAZ-73</option>
<option value="FAZ-74">FAZ-74</option>
          </select>
          <br />
		    <%
		  end if




		  if rocko = "ProteccionCivil" then
		  %>
		    <select name="vehiculo" id="vehiculo">
<option value="A-01">A-01</option>
<option value="A-02">A-02</option>
<option value="A-03">A-03</option>
<option value="A-04">A-04</option>
<option value="A-05">A-05</option>
<option value="D-02">D-02</option>
<option value="D-03">D-03</option>
<option value="D-04">D-04</option>
<option value="D-05">D-05</option>
<option value="D-06">D-06</option>
<option value="D-07">D-07</option>
<option value="D-08">D-08</option>
<option value="D-09">D-09</option>
<option value="D-10">D-10</option>
				
          </select>
          <br />
		  
		   <%
		  end if
		  
	  if rocko = "SUMAA" then
		  %>
		    <select name="vehiculo" id="vehiculo">
<option value="A-01">A-01</option>
<option value="A-02">A-02</option>
<option value="A-03">A-03</option>
<option value="A-04">A-04</option>
<option value="D-02">D-02</option>
<option value="D-03">D-03</option>
<option value="D-04">D-04</option>
<option value="D-05">D-05</option>
<option value="D-06">D-06</option>
<option value="D-07">D-07</option>
<option value="D-08">D-08</option>
<option value="D-09">D-09</option>
<option value="D-10">D-10</option>
          </select>
          <br />
		  
		   <%
		  end if


 		  if rocko = "ServiciosPublicos" then
		  %>
<select name="vehiculo" id="vehiculo">
<option value="GUIRO">GUIRO</option>
<option value="PM.013">PM.013</option>
<option value="PM.024">PM.024</option>
<option value="PM.025">PM.025</option>
<option value="PM.047">PM.047</option>
<option value="PM.048">PM.048</option>
<option value="PM.049">PM.049</option>
<option value="PM.050">PM.050</option>
<option value="PM.052">PM.052</option>
<option value="PM.055">PM.055</option>
<option value="PM.056">PM.056</option>
<option value="PM.057">PM.057</option>
<option value="PM.058">PM.058</option>
<option value="PM.059">PM.059</option>
<option value="PM.074">PM.074</option>
<option value="PM-085">PM-085</option>
<option value="PM-097">PM-097</option>
<option value="PM-098">PM-098</option>
<option value="PM-099">PM-099</option>
<option value="PM-102">PM-102</option>
<option value="PM-103">PM-103</option>
<option value="PM-104">PM-104</option>
<option value="PM-118">PM-118</option>
<option value="CARRO-SALUD">CARRO-SALUD</option>
<option value="FUMIGADOR">FUMIGADOR</option>
<option value="GUIRO">GUIRO</option>
<option value="PODADORA">PODADORA</option>
<option value="MOTOBOMBA">MOTOBOMBA</option>
<option value="RASTRO">RASTRO</option>
<option value="PLANTA ELECTRICA">PLANTA ELECTRICA</option>
<option value="CAISES">CAISES</option>
<option value="BARREDORA">BARREDORA</option>
          </select>
          <br />
		   <%
		  end if
		  

 		  if rocko = "AlumbPublico" then
		  %>
<select name="vehiculo" id="vehiculo">
<option value="PM.013">PM.013</option>
<option value="PM.024">PM.024</option>
<option value="PM.025">PM.025</option>
<option value="PM.047">PM.047</option>
<option value="PM.048">PM.048</option>
<option value="PM.049">PM.049</option>
<option value="PM.050">PM.050</option>
<option value="PM.052">PM.052</option>
<option value="PM.055">PM.055</option>
<option value="PM.056">PM.056</option>
<option value="PM.057">PM.057</option>
<option value="PM.058">PM.058</option>
<option value="PM.059">PM.059</option>
<option value="PM.074">PM.074</option>
<option value="PM-085">PM-085</option>
<option value="PM-097">PM-097</option>
<option value="PM-098">PM-098</option>
<option value="PM-099">PM-099</option>
<option value="PM-102">PM-102</option>
<option value="PM-103">PM-103</option>
<option value="PM-104">PM-104</option>
<option value="CARRO-SALUD">CARRO-SALUD</option>
<option value="FUMIGADOR">FUMIGADOR</option>
<option value="GUIRO">GUIRO</option>
<option value="PODADORA">PODADORA</option>
<option value="MOTOBOMBA">MOTOBOMBA</option>
<option value="RASTRO">RASTRO</option>
<option value="PLANTA ELECTRICA">PLANTA ELECTRICA</option>
<option value="CAISES">CAISES</option>
<option value="BARREDORA">BARREDORA</option>
          </select>
          <br />
		   <%
		  end if





 if rocko = "Salud" then
		  %>
		   <select name="vehiculo" id="vehiculo">
<option value="PM.013">PM.013</option>
<option value="PM.024">PM.024</option>
<option value="PM.025">PM.025</option>
<option value="PM.047">PM.047</option>
<option value="PM.048">PM.048</option>
<option value="PM.049">PM.049</option>
<option value="PM.050">PM.050</option>
<option value="PM.052">PM.052</option>
<option value="PM.055">PM.055</option>
<option value="PM.056">PM.056</option>
<option value="PM.057">PM.057</option>
<option value="PM.058">PM.058</option>
<option value="PM.059">PM.059</option>
<option value="PM.074">PM.074</option>
<option value="PM-085">PM-085</option>
<option value="PM-097">PM-097</option>
<option value="PM-098">PM-098</option>
<option value="PM-099">PM-099</option>
<option value="CARRO-SALUD">CARRO-SALUD</option>
<option value="FUMIGADOR">FUMIGADOR</option>
<option value="GUIRO">GUIRO</option>
<option value="PODADORA">PODADORA</option>
<option value="MOTOBOMBA">MOTOBOMBA</option>
<option value="RASTRO">RASTRO</option>
<option value="PLANTA ELECTRICA">PLANTA ELECTRICA</option>
<option value="CAISES">CAISES</option>
<option value="BARREDORA">BARREDORA</option>
          </select>
          <br />
		   <%
		  end if
		  


		  if rocko = "ObrasPublicas" then
		  %>
<select name="vehiculo" id="vehiculo">

<option value="PM.020">PM.020</option>			   
<option value="PM.034">PM.034</option>
<option value="PM.035">PM.035</option>
<option value="PM.036">PM.036</option>
<option value="PM.037">PM.037</option>
<option value="PM.043">PM.043</option>
<option value="PM.067">PM.067</option>
<option value="PM.068">PM.068</option>
<option value="PM.071">PM.071</option>
<option value="PM.075">PM.075</option>
<option value="PM.076">PM.076</option>
<option value="PM.078">PM.078</option>
<option value="PM.079">PM.079</option>
<option value="PM-084">PM-084</option>
<option value="PM-096">PM-096</option>
<option value="PM-105">PM-105</option>
<option value="PM-106">PM-106</option>
<option value="PM-108">PM-108</option>
<option value="PM-109">PM-109</option>
<option value="MOTOCONFORMADORA CATERPILLAR">MOTOCONFORMADORA CATERPILLAR</option>
<option value="Apoyo Maquinaria">Apoyo Maquinaria</option>
<option value="Revolvedora">Revolvedora</option>
          </select>
          <br />
		   <%
		  end if
		  




		  if rocko = "DesarrolloEconom" then
		  %>
		   <select name="vehiculo" id="vehiculo">
<option value="PM.003">PM.003</option>
<option value="PM-095">PM-095</option>
          </select>
          <br />
		   <%
		  end if
		 


 
		  if rocko = "DesarrolloRural" then
		  %>
<select name="vehiculo" id="vehiculo">
<option value="PM.025">PM.025</option>	
<option value="PM.027">PM.027</option>
<option value="PM.029">PM.029</option>
<option value="PM.042">PM.042</option>
<option value="PM.060">PM.060</option>
<option value="PM.070">PM.070</option>
<option value="PM-095">PM-095</option>
<option value="PM-110">PM-110</option>
<option value="PM-115">PM-115</option>
<option value="PM-116">PM-116</option>
	  </select>
          <br />
		  
		   <%
		  end if
		  



		  if rocko = "Presidencia" then
		  %>
<select name="vehiculo" id="vehiculo">
<option value="PM.001">PM.001</option>
<option value="PM.009">PM.009</option>
<option value="PM.017">PM.017</option>
<option value="PM.028">PM.028</option>
          </select>
          <br />
		   <%
		  end if
		  



		  if rocko = "Tesoreria" then
		  %>
		   <select name="vehiculo" id="vehiculo">
<option value="PM.040">PM.040</option>
<option value="PM.073">PM.073</option>
          </select>
          <br />
		  
		   <%
		  end if
		 

 
		  if rocko = "Deportes" then
		  %>
<select name="vehiculo" id="vehiculo">
<option value="PM.021">PM.021</option>
<option value="PM-086">PM-086</option>
<option value="PM-118">PM-118</option>
<option value="GUIRO">GUIRO</option>
          </select>
          <br />
		  
		   <%
		  end if
		  



		  

		  if rocko = "DesarrolloSocial" then
		  %>
		   <select name="vehiculo" id="vehiculo">
<option value="PM.010">PM.010</option>
<option value="PM.026">PM.026</option>			   
<option value="PM.072">PM.072</option>
<option value="PM-090">PM-090</option>
<option value="PM-091">PM-091</option>
              </select>          
          <br />
		   <%
		  end if
		  



		  if rocko = "Catastro" then
		  %>
		   <select name="vehiculo" id="vehiculo">
<option value="PM.011">PM.011</option>
<option value="PM.062">PM.062</option>
<option value="PM.066">PM.066</option>
          </select>
		   <%
		  end if
		  



		  if rocko = "DesUrbanoEcol" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM.007">PM.007</option>
<option value="PM-088">PM-088</option>
		  </select>
		  <%
		  end if
		  



                  if rocko = "ComunicSocUaip" then
		  %>
		  <select name="vehiculo" id="vehiculo">
<option value="PM.008">PM.008</option>
<option value="PM-087">PM-087</option>
		  </select>
		  <%
		  end if
		  




		  %>
		

  
          </label></td>
        </tr>
        <tr>
          <td align="right">Kilometraje actual de la unidad </td>
          <td><label>
            <input name="kilometraje" type="text" id="kilometraje" />
          </label></td>
        </tr>
        <tr>
          <td align="right">Comisión </td>
          <td><label>
            <input name="comision" type="text" id="comision" />
          </label></td>
        </tr>


        <tr><SCRIPT>
  window.alert("AVISO: Se les informa que todos los vehículos deberán de pasar a verificación. En caso de infracción, el director del departamento deberá de pagar la infracción. ATENTAMENTE: OFICIALIA MAYOR  ||  LOS DÍAS DE CARGA SERÁN: LUNES, MIÉRCOLES Y VIERNES de 7 am a 12 pm.");
</SCRIPT>
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
           <td align="right">Fecha</td>
          <td><label></label>
		  <input name="dia" type="hidden" id="dia" value="<%=por%>"/>
          <input type="text" name="fechas" id="fechas" value="fechas" readonly="readonly" /><span class="style46">Seleccionar Fecha ----&gt;</span> <img src="inc/calendario.png" width="25" height="25" border="0" title="Fecha Inicial" id="lanzador">
<!-- script que define y configura el calendario-->
<script type="text/javascript">
Calendar.setup({
inputField : "fechas", // id del campo de texto
ifFormat : "%d/%m/%Y", // formato de la fecha que se escriba en el campo de texto
button : "lanzador" // el id del botón que lanzará el calendario
});
</script>
</td>
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
         <!-- <td align="right"><%if rocko = "Deportes" then %>
            VALE PARA DIA SIGUIENTE
              <%
	   end if
	  
	  %>
            <%if rocko = "SeguridadPublica" or rocko = "TransitoTransporte"  or rocko = "SUMAA" then %>
            VALE PARA DIA SIGUIENTE
            <%
	   end if
	  
	  %>
            <%if rocko = "ObrasPublicas" then %>
            VALE PARA DIA SIGUIENTE
            <%
	   end if
	  
	  %>
  <%if rocko = "ServiciosPublicos" then %>
            VALE PARA DIA SIGUIENTE
            <%
	   end if
	  
	  %>
            <%if rocko = "ProteccionCivil" then %>
VALE PARA DIA SIGUIENTE
<%
	   end if
	  
	  %></td>
          <td><label>
            <%if rocko = "SeguridadPublica" or rocko = "TransitoTransporte" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ObrasPublicas" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ServiciosPublicos" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
            <%if rocko = "Deportes" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ProteccionCivil" then %>
            <input name="fin" type="radio" value="1" />
            <%
	   end if
	  
	  %>
</label></td>
        </tr>
        <tr>
          <td align="right"><%if rocko = "Deportes" then %>
            VALE PARA DOMINGO
            <%
	   end if
	  
	  %>
            <%if rocko = "SeguridadPublica" or rocko = "TransitoTransporte" or rocko = "SUMAA" then %>
            VALE PARA DOMINGO
            <%
	   end if
	  
	  %>
            <%if rocko = "ObrasPublicas" then %>
            VALE PARA DOMINGO
  <%
	   end if
	  
	  %>
  <%if rocko = "ProteccionCivil" then %>
VALE PARA DOMINGO
<%
	   end if
	  
	  %>
  <%if rocko = "ServiciosPublicos" then %>
            VALE PARA DOMINGO          
            <%
	   end if
	  
	  %></td>
          <td><label>
            <%if rocko = "SeguridadPublica" or rocko = "TransitoTransporte" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ObrasPublicas" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ServiciosPublicos" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
            <%if rocko = "Deportes" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ProteccionCivil" then %>
            <input name="fin" type="radio" value="2" />
            <%
	   end if
	  
	  %>
</label></td>
        </tr>
        <tr>
          <td align="right"><%if rocko = "Deportes" then %>
            Vale para hoy
            <%
	   end if
	  
	  %>
            <%if rocko = "SeguridadPublica" or rocko = "TransitoTransporte" then %>
            Vale para hoy
            <%
	   end if
	  
	  %>
            <%if rocko = "ProteccionCivil" then %>
Vale para hoy
<%
	   end if
	  
	  %>
            <%if rocko = "ObrasPublicas" then %>
            Vale para hoy
  <%
	   end if
	  
	  %>
  <%if rocko = "ServiciosPublicos" then %>
            Vale para hoy
  <%
	   end if
	  
	  %></td><td><label>
            <%if rocko = "SeguridadPublica" or rocko = "TransitoTransporte" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ObrasPublicas" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ServiciosPublicos" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
            <%if rocko = "Deportes" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ProteccionCivil" then %>
            <input name="fin" type="radio" value="0" checked="checked" />
            <%
	   end if
	  
	  %>
</label></td>
        </tr>
        <tr>
          <td align="right"><%if rocko = "ServiciosPublicos" then %>
            VALE PARA LUNES TEMPRANO
              <%
	   end if
	  
	  %>
              <%if rocko = "ObrasPublicas" or rocko = "SeguridadPublica" or rocko = "SUMAA" then %>
VALE PARA LUNES TEMPRANO
<%
	   end if
	  
	  %></td>
          <td><label>
            <%if rocko = "ObrasPublicas" then %>
            <input name="fin" type="radio" value="3" />
            <%
	   end if
	  
	  %>
            <%if rocko = "ServiciosPublicos" then %>
            <input name="fin" type="radio" value="3" />
            <%
	   end if
	  
	  %>
      
      <%if rocko = "SeguridadPublica" or rocko = "TransitoTransporte" then %>
            <input name="fin" type="radio" value="3" />
            <%
	   end if
	  
	  %>
      
      
</label></td>
        </tr>
		-->
        <tr>
          <td align="right">CUENTA PRESUPUESTAL</td>
          <td><label>
            <input type="text" name="cuenta" id="cuenta" />
          </label></td>
        </tr>
      </table></td>
    </tr>
  </table>
 <div align="center"><span class="style4">FAVOR DE REVISAR LA FECHA ANTES DE ENVIAR EL VALE</span>  
<div align="center"><span class="style4"><span class="style39">NOTA:</span> OFICIALIA NO REALIZARA CAMBIOS EN VALES</span></div>
  <!--
  <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><%if rocko = "Deportes" then %>
          <span class="style4">Para vale de sabado o domingo poner el kilometraje actual de la unidad</span>
          <%
	   end if
	  
	  %>
        <%if rocko = "SeguridadPublica" or rocko = "TransitoTransporte" then %>
        
        <span class="style4">Para vale de sabado o domingo poner el kilometraje actual de la unidad</span>
        <%
	   end if
	  
	  %>
        
        
        <%if rocko = "ObrasPublicas" then %>
        <span class="style4">
          Para vale de sabado o domingo poner el kilometraje actual de la unidad</span>
        <%
	   end if
	  
	  %>
        
        
        
        &nbsp;
        <%if rocko = "ServiciosPublicos" then %>
        <span class="style4">Para vale de sabado o domingo poner el kilometraje actual de la unidad</span>
  <%
	   end if
	  
	  %>
  &nbsp;</td></tr>
  </table>
  -->
</form>
</body>
</html>