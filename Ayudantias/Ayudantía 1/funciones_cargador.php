<?php
function eliminar_repetidos($array_repetidos) {
    // Código de la función
    $array_limpio = [];
    foreach ($array_repetidos as $linea){
        if (in_array($linea, $array_limpio)) {  //verifica si está el elemento en el array
            echo "Un dato está repetido.", "\n";
        } else {
            $array_limpio[] = $linea;
        }
    }
    return $array_limpio;
}

function imprimir_bonito($array_de_arrays) {
    foreach ($array_de_arrays as $mini_array){
        foreach ($mini_array as $elemnto){
            echo  "|", $elemnto;
        }
    }
    echo "\n";
    return null;
}
?>