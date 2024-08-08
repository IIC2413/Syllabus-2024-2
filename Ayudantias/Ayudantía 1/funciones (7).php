<?php
function contar_caracteres($texto) {
    // Código de la función
    $largo = strlen($texto);
    return $largo;
}
$texto = "Hola mundo!";
$largo = contar_caracteres($texto);
echo $largo;
?>

<?php
function fibonacciRecursivo($n) {
    if ($n <= 1) {
        return $n;
    }
    return fibonacciRecursivo($n - 1) + fibonacciRecursivo($n - 2);
}
$n = 10;
for ($i = 0; $i < $n; $i++) {
    echo fibonacciRecursivo($i) . " ";
}
?>