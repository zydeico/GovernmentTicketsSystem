<SCRIPT LANGUAGE="JavaScript"> <!--
function validar(formulario) {
var checkOK = "0123456789";
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
  

  
 
}

//-->
</script>

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
<form id="form1" name="form1" method="post" action="tesxxx.asp" onSubmit = "">
  <table width="800" border="0" align="center" cellpadding="1" cellspacing="1">
    <tr>
      <td align="center" bgcolor="#00FF00">&nbsp;</td>
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
          
          <br />
		 
		  <select name="vehiculo" size="8" id="vehiculo">
<option value="PM.001"  selected="selected">PM.001</option>
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
<option value="03-612">03-612</option>
<option value="03-618">03-618</option>
<option value="03-619">03-619</option>
<option value="03-620">03-620</option>
<option value="03-621">03-621</option>
<option value="03-622">03-622</option>  

		   <option value="PM.147">PM.147</option>
		   <option value="M-01">M-01</option>
           <option value="M-03">M-02</option>
           <option value="M-02">M-03</option>
           <option value="PM.156">PM.156</option>  
          
		  <option value="PM.140">PM.140</option>
		  <option value="PM.149">PM.149</option>
          
		  <option value="PM.132">PM.132</option>
          
		  <option value="PM- 164">PM- 164</option>
          
		  <option value="00-293">00-293</option>
            <option value="00-294">00-294</option>
            <option value="00-295">00-295</option>
            <option value="01-913">01-913</option>
            <option value="01-914">01-914</option>
            <option value="01-915">01-915</option>
            <option value="01-916">01-916</option>
            <option value="00-751">00-751</option>
            <option value="00-752">00-752</option>
            <option value="02-404">02-404</option>
            <option value="02-405">02-405</option>
            <option value="02-406">02-406</option>
            <option value="02-407">02-407</option>
            <option value="02-639">02-639</option>
            <option value="02-640">02-640</option>
            <option value="F-479-K">F-479-K</option>
            <option value="F-480-K">F-480-K</option>
            <option value="F-481-K">F-481-K</option>
            <option value="F-482-K ">F-482-K </option>
            <option value="F-483-K">F-483-K</option>
            <option value="F-490-K">F-490-K</option>
            <option value="F-491-K">F-491-K</option>
            <option value="FAZ-59">FAZ-59</option>
            <option value="FAZ-67">FAZ-67</option>
            <option value="FAZ-68">FAZ-68</option>
            <option value="FFE-13 ">FFE-13 </option>
            <option value="FFE-14">FFE-14</option>
            <option value="FFE-15">FFE-15</option>
            <option value="02-899">02-899</option>
            <option value="Motos">Motos</option>

          <option value="PM.196">PM.196</option>
<option value="PM.197">PM.197</option>
<option value="PM.190">PM.190</option>
<option value="PM.187">PM.187</option>

		   <option value="PM.105">PM.105</option>
            <option value="PM.112">PM.112</option>
            <option value="ECO.32">ECO.32</option>
            <option value="ECO.56">ECO.56</option>
            <option value="ECO.58">ECO.58</option>
            <option value="ECO.70">ECO.70</option>
            <option value="F-484-K">F-484-K</option>
            
          
		  <option value="PM.127">PM.127</option>
		   <option value="PM.128">PM.128</option>
            <option value="PM.129">PM.129</option>
		   <option value="PM.137">PM.137</option>
		   <option value="PM.141">PM.141</option>
		    <option value="PM.143">PM.143</option>
			<option value="PM.144">PM.144</option>
            <option value="PM.145">PM.145</option>
			 <option value="PM.155">PM.155</option>
			  <option value="PM.157">PM.157</option>
			  <option value="PM.159">PM.159</option>
			  <option value="PM.160">PM.160</option>
			  <option value="PM- 165">PM- 165</option>
            <option value="PM- 166">PM- 166</option>
			<option value="01-912">01-912</option>
			 <option value="SOPLADORA">SOPLADORA</option>
            <option value="GUIROS">GUIROS</option>
            <option value="MOTOBOMBA">MOTOBOMBA</option>
			 <option value="MOTOSIERRA">MOTOSIERRA</option>
          
		  <option value="PM.108">PM.108</option>
            <option value="PM.111">PM.111</option>
			<option value="PM.120">PM.120</option>
            <option value="PM.122">PM.122</option>
		  <option value="PM 123">PM 123</option>
            <option value="PM.124">PM.124</option>
			 <option value="PM.134">PM.134</option>
			 <option value="PM.135">PM.135</option>
			 <option value="PM.142">PM.142</option>
			  <option value="PM.146">PM.146</option>
			 <option value="PM.162">PM.162</option>
            <option value="PM-163">PM-163</option>
			<option value="F-007">F-007</option>
            <option value="F-008">F-008</option>
          
		  <option value="PM.126">PM.126</option>
		  <option value="PM.151">PM.151</option>
          
		  <option value="PM.158">PM.158</option>
          
		  <option value="PM.103">PM.103</option>
		  <option value="PM.138">PM.138</option>
		  <option value="00-289">00-289</option>
         
		  <option value="PM.118">PM.118</option>
         
		  <option value="PM.139">PM.139</option>
		  <option value="PM.161">PM.161</option>
         
		  <option value="PM.148">PM.148</option>
		   <option value="PM.153">PM.153</option>
         
		  <option value="PM.150">PM.150</option>
		  <option value="PM.154">PM.154</option>
          
         
		   <option value="PM.131">PM.131</option>
         
         
            <option value="PM.117">PM.117</option>
            <option value="PM.125">PM.125</option>
            <option value="PM.136">PM.136</option>
                   
         
          
		  <option value="PM.101">PM.101</option>
		   <option value="PM.130">PM.130</option>
		   <option value="PM.133">PM.133</option>
		   <option value="PM.152">PM.152</option>
          </select>
		   
		  
          </label></td>
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
