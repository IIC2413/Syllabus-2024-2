<?php
// Reglas:
// No se aceptan datos repetidos
// El largo del apellido es máximo 10 carácteres
// El largo del nombre debe ser como mínimo 4 carácteres
// Los email terminan en "@uc.cl"

// Se recomienda hacer funciones para esta parte
// pues se puede ocupar el filtro en más de una tabla para el proyecto
require 'funciones_cargador.php';

// Parte 1: Abrir archivo
$archivo_datos = fopen("datos.csv", "r"); //Abrir archivo en modo lectura
$array_datos = [];
while (!feof($archivo_datos)) {
    $linea = fgets($archivo_datos);
    $array_datos[] = explode(",", $linea);
}
fclose($archivo_datos); 
imprimir_bonito($array_datos);

// Parte 2: Limpiar datos según reglas
$array_datos_buenos = eliminar_repetidos($array_datos);

// Parte 3: Guardar datos formateados
$archivo_datos = fopen("datos_formateados.csv", "w"); //Abrir archivo en modo escritura
foreach ($array_datos_buenos as $dato){
    $linea = implode(",", $dato);
    fwrite($archivo_datos, $linea);
}
fclose($archivo_datos); 

?>
