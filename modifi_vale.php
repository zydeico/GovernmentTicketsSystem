<html>
<body>

<?php 
if (isset($id)){
   // process form
   $link = mysql_connect("localhost", "root");
   mysql_select_db("mydb",$db); 
   $sql = "UPDATE agenda SET nombre='$nombre', direccion='$direccion',".
      "telefono='$telefono', email='$email' WHERE id=$id";
   $result = mysql_query($sql);
}else{
   echo "Debe especificar un 'id'.\n";
}

</body>
</html> 
