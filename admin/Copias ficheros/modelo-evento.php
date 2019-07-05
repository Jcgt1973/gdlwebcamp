<?php

include_once 'funciones/funciones.php';
   
$titulo =$_POST['titulo_evento'];
$categoria_id = $S_POST['categoria_evento'];
$invitado_id = $_POST['invitado'];
//obtener la fecha
$fecha = $_POST['fecha_evento'];
$fecha_formateada = date('Y-m-d', strtotime($fecha));
//hora 
$hora= $_POST['hora_evento'];


if($_POST['registro'] == 'nuevo') {

    die(json_encode($_POST));

   try {
        $stmt = $conn->prepare('INSERT INTO eventos (nombre_evento, fecha_evento, hora_evento, id_cat_evento id_inv) VALUES (?, ?, ?, ?, ?)');
        $stmt->bind_param('sssii', $titulo, $fecha_formateada, $hora, $categoria_id, $invitado_id );
        $stmt-execute();
        if($stmt->affected_rows) {
            $id_insertado = $stmt->insert_id;
            $respuesta = array(
                'respuesta' => 'exito',
                'id_insertado' => $id_insertado
            );
        } else {
            $respuesta = array(
                'respuesta' => 'error'
            );
        }
        $stmt->close();
        $conn->close();
   } catch (Exception $e) {
       $repuesta = array (
        'respuesta' => $e->getMessage()
       );
   }
   die(json_encode($respuesta));
}

if($_POST['registro'] == 'actualizar') {

   
   try {
       if(empty($_POST['password']) ) {
            $stmt = $conn->prepare('UPDATE admins SET usuario = ?, nombre = ?, editado = NOW(), nivel = ?  WHERE id_admin = ?');
            $stmt->bind_param("ssii", $usuario, $nombre, $nivel, $id_registro);

       } else {

            $opciones = array(
                'cost'=>12
            );
            $hash_password = password_hash($password, PASSWORD_BCRYPT, $opciones);
            $stmt = $conn->prepare('UPDATE admins SET usuario = ?, nombre = ?, password = ?, editado = NOW(), nivel= ? WHERE id_admin = ?');
            $stmt->bind_param("sssii", $usuario, $nombre, $hash_password, $nivel, $id_registro);

            
       }
        
       $stmt->execute();
       if($stmt->affected_rows) {
           $respuesta = array(
               'respuesta' => 'exito',
               'id_actualizado' => $stmt->insert_id
           );
       } else {
           $respuesta = array(
               'respuesta' => 'error'
           );
       }
       $stmt->close();
       $conn->close();
   } catch (Exception $e) {
       $respuesta = array(
           'respuesta' => $e->getMessage()
       );
   }

   die(json_encode($respuesta));
}

if($_POST['registro'] == 'eliminar'){

    $id_borrar = $_POST['id'];

    try {
        $stmt = $conn->prepare('DELETE FROM admins WHERE id_admin = ?');
        $stmt->bind_param('i', $id_borrar);
        $stmt->execute();
        if($stmt->affected_rows) {
            $respuesta = array(
                'respuesta'=> 'exito',
                'id_eliminado' => $id_borrar
            );
        } else {
            $repuesta = array (
                'respuesta' => 'error'
            );
        }
    } catch (Exception $e) {
        $respuesta = array(
            'respuesta' => $e->getMessage()
        );
    }
    die(json_encode($respuesta));
}

