<?php
//Definir una lista
$lista_con_array = array('a', 'b', 'c', 'd', 'e');
$lista_con_corchetes = ['a', 'b', 'c', 'd', 'e'];

echo $lista_con_array[0], "\n";
//Sobreescribir en una lista
$lista_con_array[0] = 'z';
echo $lista_con_array[0], "\n";

//Nuevo elemento
$lista_con_array[] = 'final';
array_push($lista_con_array, "final2");
print_r($lista_con_array);

//Largo array
echo count($lista_con_array);

//Printear
foreach ($lista_con_array as $dato){
    echo $dato, "\n";
}

// Método pop
$ultimo_elemento = array_pop($lista_con_array);
echo "Pop: ", $ultimo_elemento, "\n";

// Método pop a un elemento en específico (unset)
unset($lista_con_array[2]);
print_r($lista_con_array);


// Listas de listas (matrices)
$matriz1 = array(
    array(1, 2, 3),
    array(4, 5, 6),
    array(7, 8, 9)
);
$matriz2 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
];
?>