<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $var_1 = 'var1';
    $var_2 = 'var2';

    echo "<h1>Bienvenid@s a la ayudantía</h1>";
    echo '<h2>Si queremos mostrar variables:</h2>';

    echo "<p>Variable 1: $var_1 y Variable 2: $var_2 </p>";

    $booleano = true;

    if ($booleano) {
        echo "<p>Esta condición es verdadera</p>";
    } else {
        echo "<p>Esta condición es falsa</p>";
    }

    $array = array(1, 2, 3, 4, 5, 6);
    foreach($array as $variable) {
        echo "<p>El valor es: $variable</p>";
    }

    $diccionario = array(
        "key1" => "valor 1",
        "key2" => "valor 2"
    );
    
    ?>
    <table>
        <tr>
            <th>Key</th>
            <th>Value</th>
        </tr>
        <?php foreach ($diccionario as $key => $value): ?>
            <tr>
                <td><?php echo $key; ?></td>
                <td><?php echo $value; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
    
</body>
</html>