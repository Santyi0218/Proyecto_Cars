<?php 
 	$mysql = new mysql("localhost","root@localhost", "", "octanodb");

 	$salida ="";
 	$query = "SELECT * FROM chevrolet ORDER By ID_Chevrolet";

 	if(isset($_POST['consulta'])){
 		$q = $mysql->real_escape_string($_POST['consulta']);
 		$query = "SELECT ID_Chevrolet, Referencia, Modelo, Kilometraje, Precio, Ubicacion, Caja, Traccion FROM chevrolet WHERE Modelo LIKE '%".$q."%'"
 	}

 	$resultado = $mysql->query($query);

 	if ($resultado->num_rows > 0) {
 		
 		$salida.="<table class='tabla_datos'>
 				<thead>
 					<tr>
 						<td>ID</td>
 						<td>Referencia</td>
 						<td>Modelo</td>
 						<td>Kilometraje</td>
 						<td>Precio</td>
 						<td>Ubicacion</td>
 						<td>Caja</td>
 						<td>Traccion</td>
 					</tr>
 				</thead>
 				<tbody>";

 		while($fila = $resultado->fetch_assoc()){
 			$salida.="<tr>
 					<td>".$fila['ID_Chevrolet']."</td>
 					<td>".$fila['Referencia']."</td>
 					<td>".$fila['Modelo']."</td>
 					<td>".$fila['Kilometraje']."</td>
 					<td>".$fila['Precio']."</td>
 					<td>".$fila['Ubicacion']."</td>
 					<td>".$fila['Caja']."</td>
 					<td>".$fila['Traccion']."</td>
 			</tr>";
 		}

 		$salida.="</tbody></table>";

 	} else {

 		$salida.="No hay datos :v";


 	}

 	echo $salida;

 	$mysql->close();

 ?>