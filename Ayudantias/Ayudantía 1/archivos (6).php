<?php
//Abrir archivo
$archivo1 = fopen("archivo1.txt", "r"); //Abrir archivo en modo lectura

while (!feof($archivo1)) {      //feof es final del archivo
    $linea = fgets($archivo1);
    echo $linea;
}    
fclose($archivo1); //Cerrar archivo

$archivo2 = fopen("archivo2.txt", "w"); //Abrir archivo en modo escritura
fwrite($archivo2, 'sobreescribí!');
fclose($archivo2); //Cerrar archivo

$archivo3 = fopen("archivo3.txt", "a"); //Abrir archivo en modo escritura al final del archivo
fwrite($archivo3, "\nme agregué!");
fclose($archivo3); //Cerrar archivo

$archivo4 = fopen("archivo4.txt", "w"); //Crear nuevo archivo
fwrite($archivo4, 'hola world');
fclose($archivo4); //Cerrar archivo
?>

