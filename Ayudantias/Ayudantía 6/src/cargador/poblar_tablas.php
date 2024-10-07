<?php
    include('../config/conexion.php');
    require('parametros_tablas.php');
    require('utils.php');

    try {
        echo "INICIO DE INSERCIÓN DE DATOS\n";
        foreach ($path_tablas as $tabla => $path) {
            $file = fopen($path, 'r');

            if ($file) {
                $header = fgetcsv($file); // Saltar la primera línea
                while (($data = fgetcsv($file, 0, ',')) !== false) { 
                    // Verificar restricciones antes de insertar
                    for ($i = 0; $i < count($data); $i++) {
                        if ($data[$i] == ''){ 
                            $data[$i] = Null; // Convertir campos vacíos en NULL, para evitar insertar datos vacíos
                        }
                    }
                    // Realizar toda corrección necesaria antes de insertar
                    insertar_en_tabla($db, $tabla, $data);
                }
                fclose($file);
            } else {
                echo "Error al abrir el archivo $path\n";
            }    
        } 
    } catch (Exception $e) {
        echo "Error al cargar datos: " . $e->getMessage();
    }

?>