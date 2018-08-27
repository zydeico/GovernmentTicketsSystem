<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administración de usuarios</title>

</head>

<%
	Set conn = Server.CreateObject("ADODB.Connection")
 		conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"

opt=request("opt")		

%>


<body>

<%
if opt="" then
%>
<form name="Frminicio" method="post" action="adminkm.asp?opt=check">

  <div align="center">
  <table width="240" border="0">   
 
    <tr>
      <td>Password</td>
        <td><label>
<input name="password" type="password" id="password" value="" size="20" maxlength="65" />
        </label></td>
      </tr>
  </table> 
    
<input name="Aceptar" type="submit" value="Aceptar" />
  </div>
  </form>
<%end if%>

<%
if opt="check" then

password=request.Form("password")

	if password="12345" then
		session("autentificado")=true
		response.Redirect("adminkm.asp?opt=show")
	else
		response.Redirect("adminkm.asp")
	end if
	


end if
%>



<%
if opt="show" and session("autentificado")=true then
%>



<table width="400" border="1" align="center">
  <tr>
   <th scope="col">Id</th>
    <th scope="col">Direccion</th>
    <th scope="col">Usuario</th>
  </tr>

<%SQL = "Select * from `usuarios` order by id"
  Set rs = conn.Execute(SQL)
	while not rs.eof
	%> 
  <tr>
    <th height="46" scope="row"><a title="Modificar KM" href="adminkm.asp?opt=modify&direccion=<%=rs.fields("direccion").value%>&usuario=<%=rs.fields("usuario").value%>"><%=rs("id")%></a></th>
    <td><a title="Modificar KM" href="adminkm.asp?opt=modify&direccion=<%=rs.fields("direccion").value%>&usuario=<%=rs.fields("usuario").value%>"><%=rs("direccion")%></a></td>
        <td><a title="Modificar KM" href="adminkm.asp?opt=modify&direccion=<%=rs.fields("direccion").value%>&usuario=<%=rs.fields("usuario").value%>"><%=rs("usuario")%></a></td>

  </tr>


          
          
         <%
		rs.movenext
	 wend
		 %> 
	
</table> 
		
  
  
  

<%end if%>








<%  if opt="modify" and session("autentificado")=true THEN

    direccion=request("direccion")
	usuario=request("usuario")
	'response.write(id)
	%> 

<form id="form1" name="form1" method="post" action="adminkm.asp?opt=update">


	<div align="center">
			Selecciones vehiculo a actualizar km manualmente
            <p>
		<%	  
		  if usuario = "regidores" then
		%>
		  <select name="vehiculo" id="vehiculo">
		   <option value="PM.147" selected="selected">PM.147</option>
		   <option value="PM.156">PM.156</option>  
          </select>		  
		  <%
		  end if
		  if usuario = "oficialia" then
		  %>
		  <select name="vehiculo" id="vehiculo">
		  <option value="PM.140">PM.140</option>
		  <option value="PM.149">PM.149</option>
		  <option value="PM.156">PM.156</option>
                  <option value="PM.175">PM.175</option>
                  <option value="PM.161">PM.161</option>
                  <option value="PM.176">PM.176</option>          
                  <option value="PM.195">PM.195</option>
          </select>
          <br />
		  <%
		  end if
		  
		  if usuario = "educacion" then
		  %>
		  <select name="vehiculo" id="vehiculo">
		  <option value="PM.132" selected="selected">PM.132</option>
          </select>
          <br />
		   <%
		  end if
		  
		  if usuario = "contraloria" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM- 164" selected="selected">PM- 164</option>
          <option value="PM.174">PM.174</option>
          </select>
          <br />
		    <%
		  end if
		  
		  if usuario = "seguridad" then
		  %>
		    <select name="vehiculo" id="vehiculo">
		  <option value="00-293" selected="selected">00-293</option>
		  <option value="00-290">00-290</option>
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
			<option value="PM.162">PM.162</option>
			<option value="PM.164">PM.164</option>
            <option value="MODULO">MODULO</option>
            <option value="FHL-04">FHL-04</option>
            <option value="FHL-05">FHL-05</option>
            <option value="FHL-06">FHL-06</option>
            <option value="02-901">02-901</option>
            <option value="02-902">02-902</option>
            <option value="02-903">02-903</option>
            <option value="03-348">03-348</option>
            <option value="03-349">03-349</option>
            <option value="02-900">02-900</option>
<option value="03-606">03-606</option>
<option value="03-607">03-607</option>
<option value="03-608">03-608</option>
<option value="03-609">03-609</option>
<option value="03-610">03-610</option>
<option value="03-611">03-611</option>
<option value="03-612">03-612</option>
          </select>
          <br />
		    <%
		  end if
		  
		  if usuario = "civil" then
		  %>
		    <select name="vehiculo" id="vehiculo">
		   <option value="PM.105" selected="selected">PM.105</option>
            <option value="PM.112">PM.112</option>
			 <option value="ECO.17">ECO.17</option>
            <option value="ECO.32">ECO.32</option>
            <option value="ECO.56">ECO.56</option>
<option value="ECO.57">ECO.57</option>
            <option value="ECO.58">ECO.58</option>
            <option value="ECO.59">ECO.59</option>
            <option value="ECO.70">ECO.70</option>
            <option value="F-484-K">F-484-K</option>
            <option value="MOTOBOMBA">MOTOBOMBA</option>
            <option value="PLANTA">PLANTA</option>
            <option value="MOTOR">MOTOR</option>
			<option value="MOTOSIERRA">MOTOSIERRA</option>
            <option value="PM.170">PM.170</option>
          </select>
          <br />
		  
		   <%
		  end if


			if usuario = "sumaa" then
		  %>
		    <select name="vehiculo" id="vehiculo">
		   <option value="PM.105" selected="selected">PM.105</option>
            <option value="PM.112">PM.112</option>
			 <option value="ECO.17">ECO.17</option>
            <option value="ECO.32">ECO.32</option>
            <option value="ECO.56">ECO.56</option>
			<option value="ECO.57">ECO.57</option>
            <option value="ECO.58">ECO.58</option>
            <option value="ECO.59">ECO.59</option>
            <option value="ECO.70">ECO.70</option>
            <option value="F-484-K">F-484-K</option>
            <option value="MOTOBOMBA">MOTOBOMBA</option>
            <option value="PLANTA">PLANTA</option>
            <option value="MOTOR">MOTOR</option>
			<option value="MOTOSIERRA">MOTOSIERRA</option>
            <option value="PM.170">PM.170</option>
          </select>		  
		   <%
		  end if

		  
		  if usuario = "bomberos" then
		  
		  %>
		    <select name="vehiculo" id="vehiculo">
		 
            <option value="M-01" selected="selected">M-01</option>
            <option value="M-02">M-02</option>
            <option value="M-03">M-03</option>
            <option value="M-04">M-04</option>     
            <option value="CF-01">CF-01</option>
</select>		  
		  <%
		  end if
		 
		  if usuario = "servicios" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.127" selected="selected">PM.127</option>
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
            <option value="HARNERO">HARNERO</option>
            <option value="MOTOBOMBA">MOTOBOMBA</option>
			 <option value="MOTOSIERRA">MOTOSIERRA</option>
             <option value="PM.171">PM.171</option>
			<option value="PM.179">PM.179</option>
             <option value="RASTRO">RASTRO</option>
			<option value="PODADORA">PODADORA</option>
			<option value="GUIROS">GUIROS</option>
			 <option value="PM.135">PM.135</option>
          </select>
		   <%
		  end if
		  
		  if usuario = "obras" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.108" selected="selected">PM.108</option>
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
			<option value="Maquinaria">Maquinaria</option>
            <option value="Maquina Rentada">Maquina Rentada</option>
            <option value="PM.177">PM.177</option>
 <option value="PM.178">PM.178</option>
          </select>
          <br />
		   <%
		  end if
		  
		  if usuario = "alumbrado" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.126" selected="selected">PM.126</option>
		  <option value="PM.151">PM.151</option>
<option value="PM.182">PM.182</option>
          </select>
          <br />
		   <%
		  end if
		  
		  if usuario = "economico" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.158" selected="selected">PM.158</option>
          </select>
          <br />
		   <%
		  end if
		  
		  if usuario = "rural" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.103" selected="selected">PM.103</option>
          <option value="PM.173">PM.173</option>
		  <option value="PM.138">PM.138</option>
		  <option value="00-289">00-289</option>
		   <option value="PM-167">PM-167</option>
           <option value="MAQUINA RENTADA">MAQUINA RENTADA</option>
          </select>
          <br />
		  
		   <%
		  end if
		  
		  if usuario = "presidencia" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.118" selected="selected">PM.118</option>
          </select>
          <br />
		   <%
		  end if
		  
		  if usuario = "tesoreria" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.139" selected="selected">PM.139</option>
		  <option value="PM.161">PM.161</option>
<option value="PM.188">PM.188</option>
          </select>
          <br />
		  
		   <%
		  end if
		  
		  if usuario = "deportes" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.148" selected="selected">PM.148</option>
		   <option value="PM.153">PM.153</option>
		    <option value="PODADORA">PODADORA</option>
          </select>
          <br />
		  
		   <%
		  end if
		  
		  if usuario = "cultura" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.150" selected="selected">PM.150</option>
		  <option value="PM.154">PM.154</option>
          </select>
          <br />
		   <%
		  end if
		  
		  if usuario = "salud" then
		  %>
		    <select name="vehiculo" id="vehiculo">
		    <option value="PM.131" selected="selected">PM.131</option>
		    <option value="PLANTA ELECTRICA">PLANTA ELECTRICA</option>
	            <option value="CAISES">CAISES</option>
                    <option value="PM.195">PM.195</option> 
                    <option value="BOMBA">BOMBA</option>
            </select>
          <br />
		   <%
		  end if
		  
		  if usuario = "social" then
		  %>
		   <select name="vehiculo" id="vehiculo">
            <option value="PM.117" selected="selected">PM.117</option>
            <option value="PM.125">PM.125</option>
            <option value="PM.136">PM.136</option>
            <option value="PM.172">PM.172</option>
             
            </select>          
          <br />
		   <%
		  end if
		  
		  if usuario = "catastro" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.101" selected="selected">PM.101</option>
		   <option value="PM.130">PM.130</option>
		   <option value="PM.133">PM.133</option>
		   <option value="PM.152">PM.152</option>
          </select>
		   <%
		  end if
		  
		  if usuario = "comunicacion" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.168" selected="selected">PM.168</option>
          </select>
		   <%
		  end if
		  
		  
		  if usuario = "juez" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.169" selected="selected">PM.169</option>
          </select>
		   <%
		  end if
		  


		if usuario = "066" then
		  %>
		   <select name="vehiculo" id="vehiculo">
		  <option value="PM.181" selected="selected">PM.181</option>
          </select>
		   <%
		  end if

		  %>


<br/>

<input name="Aceptar" type="submit" value="Aceptar" />
<input name="direccion" type="hidden" id="direccion" value="<%=direccion%>">
</div>
</form>



<%end if%>








<%  if opt="update" and session("autentificado")=true THEN

vehiculo=request.form("vehiculo")
direccion=request.Form("direccion")



SQL="Select * from `combustible` where `vehiculo` = '"&vehiculo&"' and `valido` = '0' order by `id` desc limit 1"

'SQL = "update `usuarios` set `nombre` = '"&nombre&"' where `id`='"&id&"'"
'response.Write(SQL)
  Set rs = conn.Execute(SQL)
  
  km=rs("kmactuales")
  id=rs("id")
	
	%>
<form id="formkm" name="formkm" method="post" action="adminkm.asp?opt=update2">  
<table width="400" border="1" align="center">
  <tr>
    <th colspan="2" scope="col"><%=direccion%></th>
  </tr>
  <tr>
    <th scope="row">Vehiculo</th>
    <td><%=vehiculo%></td>
  </tr>
  <tr>
    <th scope="row">KM</th>
    <td><input name="KM" id="KM" type="text" value="<%=km%>" /></td>
  </tr>
</table>
<div align="center">
<input name="Aceptar" type="submit" value="Aceptar" />
<input name="id" type="hidden" id="id" value="<%=id%>">
</div>
</form>
<%end if%>




<%if opt="update2" and session("autentificado")=true THEN

km=request.form("km")
id=request.Form("id")

'response.Write(km&"<br/>")
'response.Write(id)

SQL = "update `combustible` set `kmactuales` = '"&km&"' where `id`='"&id&"'"
'response.Write(SQL)
  Set rs = conn.Execute(SQL)

response.Redirect("adminkm.asp?opt=show")
end if%>



</body>

<%
set conn=nothing
%>

</html>