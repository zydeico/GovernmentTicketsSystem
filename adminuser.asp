<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administraci�n de usuarios</title>

</head>

<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>

<%
	Set conn = Server.CreateObject("ADODB.Connection")
 		conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"

opt=request("opt")		

%>


<body>

<%
if opt="" then
%>
<form name="Frminicio" method="post" action="adminuser.asp?opt=check">

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

	if password="123456789" then
		session("autentificado")=true
		response.Redirect("adminuser.asp?opt=show")
	else
		response.Redirect("adminuser.asp")
	end if
	


end if
%>



<%
if opt="show" and session("autentificado")=true then
%>



<table width="700" border="1" align="center">
  <tr>
   <th scope="col">Id</th>
    <th scope="col">Nombre Responsable</th>
    <th scope="col">Departamento</th>
  </tr>

<%SQL = "Select * from `usuarios` order by id"
  Set rs = conn.Execute(SQL)
	while not rs.eof
	%> 
  <tr>
    <th scope="row"><a title="Modificar password" href="adminuser.asp?opt=modify&id=<%=rs.fields("id").value%>"><%=rs("id")%></a></th>
    <td><a title="Modificar password" href="adminuser.asp?opt=modify&id=<%=rs.fields("id").value%>"><%=rs("nombre")%></a></td>
    <td><a title="Modificar password" href="adminuser.asp?opt=modify&id=<%=rs.fields("id").value%>"><%=rs("direccion")%></a></td>
  </tr>


          
          
         <%
		rs.movenext
	 wend
		 %> 
	
</table> 
		
  
  
  

<%end if%>








<%  if opt="modify" and session("autentificado")=true THEN

    id=request("id")
	'response.write(id)

SQL = "Select * from `usuarios` where `id`='"&id&"'"
  Set rs = conn.Execute(SQL)
	if not rs.eof then
	%> 

<form id="form1" name="form1" method="post" action="adminuser.asp?opt=update">
<table width="700" border="1" align="center">
  <tr>
    <th scope="col">Departamento</th>
    <th scope="col"><%=rs.fields("direccion")%></th>
  </tr>
  <tr>
    <th scope="row">Responsable</th>
    <td><input type="text" name="nombre" size="40" value="<%=rs.fields("nombre")%>"/></td>
  </tr>
</table>
<div align="center">
<input name="Aceptar" type="submit" value="Aceptar" />
<input name="id" type="hidden" id="id" value="<%=id%>">
</div>
</form>

<%end if%>


<%end if%>








<%  if opt="update" and session("autentificado")=true THEN

nombre=request.form("nombre")
id=request.Form("id")
'response.write(nombre)

SQL = "update `usuarios` set `nombre` = '"&nombre&"' where `id`='"&id&"'"
response.Write(SQL)
  Set rs = conn.Execute(SQL)

response.Redirect("adminuser.asp?opt=show")
end if%>






</body>

<%
set conn=nothing
%>

</html>