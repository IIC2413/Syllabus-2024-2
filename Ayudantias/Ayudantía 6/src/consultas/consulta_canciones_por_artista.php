<?php include('../templates/header.html');   ?>

<body>
    <?php
    require("../config/conexion.php");

    $artista = $_POST["artista"];

    $query = "SELECT track_name, artist_name FROM spotify WHERE artist_name LIKE '%$artista%';";
    $result = $db -> prepare($query);
    $result -> execute();
    $cancion = $result -> fetchAll();

    ?>

    <table class="styled-table">
        <tr>
            <th>Canción</th>
            <th>Artistas</th>
        </tr>
        <?php
        foreach ($cancion as $c) {
            echo "<tr><td>$c[0]</td><td>$c[1]</td></tr>";
        }
        ?>
    </table>
</body>

<?php include('../templates/footer.html'); ?>