<?php
$verdadero = true;
echo "Verdadero: ", $verdadero, "\n";
$falso = false;
echo "Falso: ", $falso, "\n";
echo null, "<- es None"; //None
?>

<?php
$cond1 = 1 == 2;        // Falso
$cond2 = "b" != "a";    // Verdadero
$cond3 = 10 < 11;       // Verdadero
$cond4 = 10 >= 11;      // Falso
echo "primero: ", $cond1, "\nsegundo: ", $cond2, "\ntercero: ", $cond3, "\ncuarto: ", $cond4;
?> 

<?php
if ($cond1) {
    // Código si se cumple cond1
    echo "Condición 1";
} elseif (!$cond2 | $cond2) {
    // Código si se cumple cond2
    echo "Condición 2";
} elseif ($cond3 && $cond4) { 
    // Código si se cumple cond3 y no cond4
    echo "Condición 3 y 4";
} else {
    // Código si no se cumple ninguna
    echo "Ninguna condición";
}
?>