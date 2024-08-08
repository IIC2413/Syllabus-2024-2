<?php
$string = 'Hola Mundo';
echo $string[6], "\n";          // u (obtiene el caracter en la posición 6)
echo $string . ' :D', "\n";     // Hola Mundo :D (concatenación)
echo strlen($string), "\n";     // 10 (calcula la longitud del string)
echo strpos($string, 'Mundo'), "\n"; // 5 (busca el índice de la palabra 'Mundo')
echo strtoupper($string), "\n"; // HOLA MUNDO (convierte a mayúsculas)
echo strtolower($string), "\n"; // hola mundo (convierte a minúsculas)
echo str_replace('Mundo', 'Planeta', $string), "\n"; // Hola Planeta (reemplaza 'Mundo' por 'Planeta')
?>

<?php
$string = "Hola,Mundo";
$spliteado = explode(",", $string);

//Mostrar array
//Opción 1
echo "Opción 1", "\n";
for ($j = 0; $j < count($spliteado) ; $j++) {
    echo $spliteado[(int)$j], "\n";
}
echo "\n";

//Opción 2
echo "Opción 2", "\n";
foreach($spliteado as $s) {
    echo $s, "\n";
}

echo "\n";
//Opción 3
echo "Opción 3", "\n";
print_r($spliteado);
?>