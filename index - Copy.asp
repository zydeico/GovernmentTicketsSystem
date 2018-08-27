<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>OFICIALIA MAYOR - APASEO EL ALTO, GTO.</title>
    <meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
    <meta name="author" content="n.a.s.a. 3.0 GmbH" />
    <meta name="keywords" content="n.a.s.a. 3.0 GmbH" />
    <meta name="description" content="n.a.s.a. 3.0 GmbH" />
    <meta name="copyright" content="n.a.s.a. 3.0 GmbH" />

    <meta name="revisit-after" content="7 days" />
    <meta name="publisher" content="n.a.s.a. 3.0 GmbH" />
    <meta name="owner" content="n.a.s.a. 3.0 GmbH" />
    <meta name="content-language" content="de" />
    <meta name="distribution" content="global" />
    <meta name="robots" content="index" />
    <link href="inc/main.css" rel="stylesheet" type="text/css" />
	<script src="inc/scripte.js" type="text/javascript"></script>

<script src="inc/jquery.js" type="text/javascript"></script>
<script src="inc/flash_scripte.js" type="text/javascript"></script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>
<% session("seccion") = request.querystring("seccion")
%>
<body>
<%
if request.form("usuario")="" then
%>
<div id="flashover" style="display:none;"></div>

<div id="wrapper">
	<div id="logo"></div>
  <div id="movie"></div>
<div id="content_middle">
  <div class="teaser_middle">.</div>
		<div class="hor_spacer">hh</div>
		<div class="teaser_middle"></div>
	<div class="hor_spacer">&nbsp;</div>
		<div class="teaser_middle">
		
		
		
		
				<form method="POST" action="index.asp">

		<label>Usuario</label>
		<input type="text" name="usuario" id="usuario"/>
		<label class="vorname">Password</label>
		<input type="password" name="password" id="password"/>
		<div class="cleaner">
		  
		  <input name="B1" type="submit" class="style15" id="B1" value="Enviar" />
		  
		</div>
		
		<div class="cleaner"></div>
		<div class="cleaner"></div>
		<div class="cleaner"></div>
		        </form>
				</div>
		<div class="cleaner"></div>
		
	</div>
  <div id="content_bottom">
		<div class="teaser_bottom">
		  <strong>VISI&Oacute;N</strong>:
		  <blockquote>&nbsp;</blockquote>
		  <br/>
		<!--Näheres erfahren Sie auch bei uns!-->
</div>
		<div class="hor_spacer">&nbsp;</div>
		<div class="teaser_bottom">
		  <strong>MISI&Oacute;N:</strong>
		  <blockquote>&nbsp;</blockquote>
		</div>

		<div class="hor_spacer">&nbsp;</div>
		<div class="teaser_bottom"><strong>Servicios:</strong></div>
	<div class="cleaner"></div>
	</div>
	<div id="footer"><span class="style1">H. Ayuntamiento 2009 - 2012&nbsp;&nbsp;&nbsp;- Tel: ( 413) 16 6 00 28 ext. 105&nbsp;-&nbsp; Apaseo el Alto, 5 de mayo # 101, Colonia Centro.</span>

	  <div class="style1" id="wrapper_impressum">
				<div id="content_impressum" style="display:none;">
			
			<p><strong>n.a.s.a. 3.0 GmbH</strong><br/><br/>
			<b>SITZ DER GESELLSCHAFT</b><br/>
			Große Elbstraße 68<br/>
			22767 Hamburg<br/>

			Telefon: 040 / 32 32 47 - 0<br/>
			Telefax: 040 / 32 32 47 - 47		<br/>
			E-Mail: <a href="mailto:info@nasa30.com">info@nasa30.com</a><br/><br/>
			
			
			<strong>HANDELSREGISTER</strong><br/>
			Amtsgericht Hamburg <br/>
			HRB 107080<br/>

			Geschäftsführer: Fausto Maugeri<br/>
			USt-ID-Nr. DE 262 050 866<br/>
			<br/>
			</p>
			<div id="btn_close"><img src="design_images/spacer.gif" width="20" height="20" alt="Schließen" /></div>
		</div>
	</div>
	<div class="cleaner"></div>
  </div>
</div>
<%else
'eliminamos las posibles comillas de la entrada
'para evitar la introducción de sentencias SQL
usuario=replace(request.form("usuario"),"'","")
password=replace(request.form("password"),"'","")
Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=127.0.1.1;DATABASE=vales;user=pmunicipal;PASSWORD=pm3649alto;OPTION=3;PORT=3306;"


set rs = CreateObject("ADODB.Recordset")
sqltxt="Select * from `usuarios` where `usuario` = '"&usuario&"' and `pass` = '"&password&"'"
'response.write sqltxt
rs.Open sqltxt, conn
if rs.eof = false then
' nos ha devuelto un registro, ahora miraremos si es valido
' con ello evitamos el ataque típico SQL
if rs("usuario")=usuario and rs("pass")=password  then

'if rs("usuario") = "seguridad" then
'jijiji = 0
'response.Redirect("index.asp")
'else
'jijiji = 1
'end if

'if rs("usuario") = "civil" then
'jijiji = 0
'response.Redirect("index.asp")
'else
'jijiji = 1
'end if



'if rs("usuario") = "servicios" then
'jijiji = 0
'response.Redirect("fueradehorario.asp")
'else
'jijiji = 1
'end if


' si el usuario esta en la base de datos y la password coincide
'response.redirect "error.asp"

session("usuario") = usuario


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

'dim ytyt as integer
'dim tyu as integer
tyu = pus&pus2

response.Write("horaa"&tyu&"-----")
ytyt = 1530
limiteh = 15
limitem = 30
response.Write("-----"&tyu&"------Fuera de horario------")
if pus > limiteh then
if pus2 > limitem then
response.Write("-----"&tyu&"------Fuera de horario------")
'response.Redirect("fueradehorario.asp")
end if
end if


response.redirect "tipovale.asp"
end if
else
session("usuario")= ""

end if
rs.close
set rs=nothing
conn.close
set conn=nothing
if session("usuario")= false or session("usuario") = "" then
' no hemos encontrado el registro
' eso indica que el usuario y/o la password son erroneos
response.redirect "index.asp?msg=Usuario%20/%20password%20incorrecto"
end if

end if%>
</body>
</html>
