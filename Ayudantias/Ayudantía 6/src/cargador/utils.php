<?php
    function insertar_en_tabla($database, $tabla, $fila){
        try {
            $valores = array_values($fila);
            $database->beginTransaction();
            $placeholders = implode(',', array_fill(0, count($valores), '?')); 
            $stmt = $database->prepare("INSERT INTO $tabla VALUES ($placeholders);");
            $stmt->execute($valores);
            $database->commit();

        } catch (Exception $e) {
            $database-> rollBack();
            echo "Error al insertar en la tabla $tabla: " . $e->getMessage();
        } 
    }
?>