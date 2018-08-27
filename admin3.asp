<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% if session("admin") = ""  then

response.redirect "combustible.asp"

end if%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-10" />
<title>Administracion de Fichas</title>
<style type="text/css">
<!--
.boton {color:#000000; 
font-weight:bold; 
font-family: Arial;
background-color:#95B4E3}
.style10 {font-family: Arial}
.style7 {font-size: 13px;
	color: #FFFFFF;
	font-family: Arial;
}
.style11 {color: #000000}
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="consultafichas.asp">
  <table width="800" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <th bgcolor="#0000FF" scope="col"><span class="style11"><font color="#FFFFFF">Administraci&ograve;n de Fichas</font></span></th>
    </tr>
  </table>
  <table width="800" border="0" align="center" cellpadding="0" cellspacing="2" bgcolor="#000000">
    <tr>
      <th scope="col"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F2F2F2">
          <tr>
            <td width="100%" colspan="2" align="center" bgcolor="#0000FF"><p align="center"></p>
            <p align="center" class="style7">&nbsp;</p></td>
          </tr>
          <tr>
            <td width="0%" align="right">&nbsp;</td>
            <td width="100%" align="center">D&igrave;a para hacer el reporte </td>
          </tr>
          <tr>
            <td width="0%" align="right">&nbsp;</td>
            <td width="100%" align="center">
            <label>
            d&igrave;a
            <select name="dia" id="dia">
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
              <option value="05">05</option>
              <option value="06">06</option>
              <option value="07">07</option>
              <option value="08">08</option>
              <option value="09">09</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
              <option value="18">18</option>
              <option value="19">19</option>
              <option value="20">20</option>
              <option value="21">21</option>
              <option value="22">22</option>
              <option value="23">23</option>
              <option value="24">24</option>
              <option value="25">25</option>
              <option value="26">26</option>
              <option value="27">27</option>
              <option value="28">28</option>
              <option value="29">29</option>
              <option value="30">30</option>
              <option value="31">31</option>
            </select>
            </label>
            /mes
            <label>
            <select name="mes" id="mes">
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
              <option value="05">05</option>
              <option value="06">06</option>
              <option value="07">07</option>
              <option value="08">08</option>
              <option value="09">09</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
            </select>
            </label>
            <label>/a&ntilde;o
            <select name="anho" id="anho">
                     <option value="2015">2015</option>
                     <option value="2016">2016</option>
                     <option value="2017">2017</option>
                     <option value="2018">2018</option>
                </select>
            </label></td>
          </tr>
          <tr>
            <td width="100%" colspan="2"><p align="center">
                <input name="B1" type="submit" class="boton" value="Enviar" />
            </p></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><span class="style10"><a href="registro.asp"></a> </span></td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
      </table></th>
    </tr>
  </table>
</form>
<form id="form2" name="form2" method="post" action="ficha1.asp">
  <table width="800" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <th bgcolor="#0000FF" scope="col"><span class="style11"><font color="#FFFFFF"><font size="+2">Administraci&ograve;n de Fichas</font></font></span></th>
    </tr>
  </table>
  <table width="800" border="0" align="center" cellpadding="0" cellspacing="2" bgcolor="#000000">
    <tr>
      <th scope="col"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F2F2F2">
          <tr>
            <td width="100%" colspan="2" align="center" bgcolor="#0000FF"><p align="center"></p>
                <p align="center" class="style7">&nbsp;</p></td>
          </tr>
          <tr>
            <td width="0%" align="right">&nbsp;</td>
            <td width="100%" align="center">FOLIO DE FICHA</td>
          </tr>
          <tr>
            <td width="0%" align="right">&nbsp;</td>
            <td width="100%" align="center"><label>
            <input name="ficha" type="text" id="ficha" />
            </label>
            <label></label></td>
          </tr>
          <tr>
            <td width="100%" colspan="2"><p align="center">
                <input name="B12" type="submit" class="boton" value="Enviar" />
            </p></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><span class="style10"><a href="registro.asp"></a> </span></td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
      </table></th>
    </tr>
  </table>
</form>
</body>
</html>
