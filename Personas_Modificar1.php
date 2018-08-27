<?php
  include 'conexion.php';
  $consulta=Consultar($_GET['idPersona']);
  function Consultar($id_ele)
  {
	  $sentencia="SELECT * FROM personas WHERE idPersona='".$id_ele."' ";
	  $resultado = mysql_Query($sentencia) or die(mysql_error());
	  $renglon = mysql_fetch_assoc($resultado);
	  return [
		/*$renglon['idElectrodomestico'],*/
		$renglon['Nombre'], 
		$renglon['APaterno'],
		$renglon['aMaterno'],
		$renglon['Fecha_Nacimiento'],
		$renglon['Telefono1'],
		$renglon['Sueldo'], 
	  ];
	  
  }
  
?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MODIFICAR</title>
<link rel="stylesheet" href="css/estilo_mail_personas.css">
</head>

<body>
	<form action="script_Personas_Cambio.php" method="POST">
    	<h2>MODIFICAR PERSONA</h2>
        <input type="text" name="nombre" value="<?php echo $consulta[0]?>">
        <input type="text" name="Apaterno" value="<?php echo $consulta[1]?>">
        <input type="text" name="AMaterno" value="<?php echo $consulta[2]?>">
        <input type="text" name="Fech_Nacimiento" value="<?php echo $consulta[3]?>">
        <input type="text" name="Tel" value="<?php echo $consulta[4]?>">
        <input type="float" name="Sueldo" value="<?php echo $consulta[5]?>">
        <input type="hidden" name="idpersona" value="<?php echo $consulta[idpersona]?>">
        <input id="boton" type="submit" name="ENVIAR" value= "ACTUALIZAR">
        
        </form>
</body>
</html>