<?php 
session_start();

if (!isset($_SESSION['user']) || $_SESSION['role'] !== 'admin') {
    header("Location: index.php");  
    exit();
}

include('templates/header.html'); 
?>

<body>
  <div class="admin">
  <h1 class="title">Registro de Nuevos Usuarios</h1>

  <form class="registration-form" action="consultas/consulta_admin.php" method="post">
    <p class="form-description">Ingrese los detalles del nuevo usuario:</p>
    <div class="form-container">
        <label for="email" class="form-label">Correo electrónico:</label>
        <input type="email" class="form-input" id="email" name="email" required>

        <label for="password" class="form-label">Contraseña:</label>
        <input type="password" class="form-input" id="password" name="password" required>

        <label for="role" class="form-label">Rol del usuario:</label>
        <select class="form-select" id="role" name="role" required>
            <option value="user">user</option>
            <option value="admin">admin</option>
        </select>

        <input type="submit" class="form-button" value="Registrar Usuario">
    </div>
  </form>

  <form class="logout-form" method="POST" action="consultas/logout.php">
    <button type="submit" class="form-button">Volver a Iniciar Sesión</button>
  </form>
  </div>
</body>
</html>
