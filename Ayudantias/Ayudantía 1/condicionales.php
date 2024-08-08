<?php
$verdadero = true;
echo "Verdadero: ", $verdadero, "\n";
$falso = false;
echo "Falso: ", $falso;
?>

<?php
$cond1 = 1 == 2;
$cond2 = "b" != "a";
$cond3 = 10 < 11;
$cond4 = 10 >= 11;
echo $cond1, $cond2, $cond3, $cond4;
?>

<?php
if ($cond1) {
    // Código si se cumple cond1
    echo "Condición 1";
} elseif (!$cond2) {
    // Código si se cumple cond2
    echo "Condición 2";
} else {
    // Código si no se cumple ninguna
    echo "Ninguna condición";
}
?>