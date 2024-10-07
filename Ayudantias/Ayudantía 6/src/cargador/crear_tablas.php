<?php
    include('../config/conexion.php');
    require('parametros_tablas.php');

    foreach($tablas_iniciales as $tabla => $atributos) {
        try {
            echo "Creando tabla $tabla...\n";
            $db->beginTransaction();
            $createTableQuery = "CREATE TABLE IF NOT EXISTS $tabla ($atributos);";
            $db->exec($createTableQuery);
            $db->commit();
        } catch (Exception $e) {
            $db->rollBack();
            echo "Error al crear la tabla $tabla: " . $e->getMessage();
        }
    }

?>