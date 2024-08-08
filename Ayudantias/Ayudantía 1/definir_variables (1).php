<?php
// Usando comillas dobles
$texto1 = "Esto es un string.\n";
$texto2 = 'Esto también es otro string.';

// Mostrando strings
echo $texto1; // Salida: Esto es una cadena de texto.
echo "Hola mundo\n";
echo $texto2. "\n";

// Definir un número
$numero = "100";
$texto_a_numero = (int)$numero + 1;
echo $texto_a_numero, "\n"; // Salida: 101

// Definir una cadena que representa un número
$cadenaNumerica = "123.4";
$numeroConvertido = (float)$cadenaNumerica + 2;
echo $numeroConvertido;
echo "\n";
echo 123.45;
echo "\n";

//para comandos por consola
print_r($argv);
?>
 
+