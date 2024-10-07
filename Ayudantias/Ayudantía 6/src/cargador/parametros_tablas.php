<?php

$path_tablas = array(
    'spotify' => '../data/Spotify-Songs.csv',
    'usuarios' => '../data/usuarios.csv',
);

$tablas_iniciales = array(
    'spotify' => 'track_name VARCHAR(255), artist_name VARCHAR(255), released_year INT, streams BIGINT, danceability_percent INT',
    'usuarios' => 'email VARCHAR(255) UNIQUE NOT NULL, password VARCHAR(255) NOT NULL, role VARCHAR(50) NOT NULL',
);

?>