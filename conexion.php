<?php

$conexion=mysql_connect("localhost","pmunicipal","pm3649alto");
mysql_select_db("vales",$conexion);
function protect ($v){ 

	$v=mysql_real_escape_string($v);
	$v=htmlentities($v, ENT_QUOTES);
	$v=trim($v);
	return $v;
}
?>

