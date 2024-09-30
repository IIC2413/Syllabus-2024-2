<?php 
session_start();

if (!isset($_SESSION['user']) || $_SESSION['role'] !== 'user') {
    header("Location: index.php"); 
    exit(); 
}

include('templates/header.html'); 
?>

<body>
  <div class="user">
  <h1 class="title">Biblioteca de Spotify</h1>
  <p class="description">Aquí podrás encontrar información sobre las canciones más escuchadas.</p>

  <h2 class="subtitle">Ranking de canciones por reproducciones</h2>
  <p class="prompt">Ingresa el largo del top de canciones:</p>
  <form class="form" action="consultas/consulta_cancion_mas_escuchada.php" method="post">
    <input class="form-input" type="number" required placeholder="Ingresa un número" name="cantidad" min="1" max="157"> 
    <br>
    <input class="form-button" type="submit" value="Buscar">
  </form>
  <br>
  <br>

  <p class="prompt">Ingresa el nombre de un artista:</p>
  <form class="form" action="consultas/consulta_canciones_por_artista.php" method="post">
    <input class="form-input" type="text" required placeholder="Ingresa un nombre" name="artista"> 
    <br>
    <input class="form-button" type="submit" value="Buscar">
  </form>
  <br>
  <br>
  <form method="POST" action="consultas/logout.php">
    <button type="submit" class="form-button">Volver a Iniciar Sesión</button>
  </form>
  </div>
</body>
</html>
