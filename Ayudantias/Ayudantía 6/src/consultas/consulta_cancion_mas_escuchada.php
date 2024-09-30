<?php include('../templates/header.html');   ?>

<body>
    <?php
    require("../config/conexion.php");

    $cantidad = $_POST["cantidad"];
    $cantidad = intval($cantidad);

    $query = "SELECT track_name, artist_name, streams FROM spotify ORDER BY streams DESC LIMIT $cantidad;";
    $result = $db -> prepare($query);
    $result -> execute();
    $cancion = $result -> fetchAll();

    ?>

    <table class="styled-table">
        <tr>
            <th>Canción</th>
            <th>Artistas</th>
            <th>Reproducciones</th>
        </tr>
        <?php
        foreach ($cancion as $c) {
            echo "<tr><td>$c[0]</td><td>$c[1]</td><td>$c[2]</td></tr>";
        }
        ?>
    </table>
</body>

<?php include('../templates/footer.html'); ?>