<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<%Response.ContentType = "application/vnd.ms-excel"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Vales</title>
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.style2 {font-size: 7px}
-->
</style>
</head>

<body>

<form id="form1" name="form1" method="post" action="">
<div align="center">
    
    <p align="left">
      <%

car = request.form("ficha")
 SQL = "Select * from `combustible` where `factura` = '"&car&"' order by `vehiculo`,`id` desc "
 



					set rs = Server.CreateObject("ADODB.Recordset")
					
  Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=vales;USER=pmunicipal;PASSWORD=pm3649alto;OPTION=3;"




rs.open SQL, conn








%>
      
      <strong>BITACORA DE GASOLINA      </strong><BR/>
      <strong>PRESIDENCIA MUNICIPAL DE APASEO EL ALTO, GTO.   </strong><br/>
      <strong>FACTURA</strong>: 
	<%response.write(rs("factura"))%>
	<table width="800" border="1" cellpadding="0" cellspacing="0" bgcolor="#003300">
      <tr>
        <td align="center"><span class="style1">FECHA</span></td>
        <td align="center"><span class="style1">NO. VALE </span></td>
        <td align="center"><span class="style1">VEHICULO</span></td>
        <td align="center"><span class="style1">DESTINO</span></td>
        <td align="center"><span class="style1">RESPONSABLE</span></td>
        <td align="center"><span class="style1">LITROS<br>
        SOLICITADOS</span></td>
        <td align="center"><span class="style1">LITROS<br>
        SURTIDOS</span></td>
        <td align="center"><span class="style1">TIPO DE<br>
        COMBUSTIBLE</span></td>
        
        <td align="center"><span class="style1">IMPORTE</span></td>
        <td align="center"><span class="style1">Sumatoria<br>por<br> 
        veh&iacute;culo</span> </td>
      </tr>
    </table>
	<table width="800" border="1" cellspacing="0" cellpadding="0">
	
	<%
	
	
		while not rs.eof
		
	u = u + 1
	pitufo = pitufo + CDbl(rs("costov"))
	if u > 1 then
			
			if rs("vehiculo") = cock then
					
					coco = 0
					
					pipi = pipi + CDbl(rs("costov"))
					
			else 
					coco = 1
					pipi = CDbl(rs("costov"))
			
			
			end if
	
	
	else
					
					pipi = rs("costov")
	
	end if
	
	cock = rs("vehiculo")
	
		if coco = 1 then 
		%>
		
		  <tr>
        <td bgcolor="#CCCCCC">&nbsp;</td>
        <td bgcolor="#CCCCCC">&nbsp;</td>
        <td bgcolor="#CCCCCC">&nbsp;</td>
        <td bgcolor="#CCCCCC">&nbsp;</td>
        <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
        <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
        <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
        <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
        <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
        <td align="center" bgcolor="#CCCCCC">&nbsp;</td>
      </tr>
		 <tr>
        <td><%response.write(rs("fe"))%></td>
        <td><%response.write(rs("id"))%></td>
        <td><%response.write(rs("vehiculo"))%></td>
        <td><%response.write(rs("lugarvisita"))%></td>
        <td><span class="style2"><%response.write(rs("re"))%></span></td>
        <td align="center"><%response.write(rs("lts"))%></td>
        <td align="center"><%response.write(rs("lts1"))%></td>
        <td><%response.write(rs("tipo"))%></td>
        <td align="center"><%response.write(rs("costov"))%></td>
        <td align="center"><%response.write(pipi)%></td>
      </tr>
		<%
		
		else
		 
		 
	%>
      <tr>
        <td><%response.write(rs("fe"))%></td>
        <td><%response.write(rs("id"))%></td>
        <td><%response.write(rs("vehiculo"))%></td>
        <td><%response.write(rs("lugarvisita"))%></td>
        <td><span class="style2"><%response.write(rs("re"))%></span></td>
        <td align="center"><%response.write(rs("lts"))%></td>
        <td align="center"><%response.write(rs("lts1"))%></td>
        <td><%response.write(rs("tipo"))%></td>
        <td align="center"><%response.write(rs("costov"))%></td>
        <td align="center"><%response.write(pipi)%></td>
      </tr>
     
     <%
	end if 
	 
	 rs.movenext
	 wend
	 
	 u = u + 5%>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
         <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
         <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
         <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="center"><strong>TOTAL</strong></td>
        <td align="center"><strong>
          <%response.Write(pitufo)%>
        </strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
         <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
         <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
         <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
         <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
         <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
         <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
        <td align="right">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="5"><div align="center">
          <p>&nbsp;</p>
          <p>____________________________<br>
          Autoriz&oacute;<br>
          Ing. Samuel Arreguín Vega<br>
            Oficial Mayor</p>
        </div></td>
        <td colspan="5"><div align="center">
          <p>&nbsp;</p>
          <p>____________________________<br>
          Elabor&oacute;<br>
          Sendy Mandujano Ortiz<br>
            Auxiliar Administrativo C</p>
        </div></td>
      
      </tr>
    </table>
</div>
<label>
<%
'opo = 1

%>
</label>
</form>
<p>&nbsp;</p>
</body>
</html>

