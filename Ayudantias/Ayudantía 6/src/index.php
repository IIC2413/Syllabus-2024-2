<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="styles/login.css">
</head>
<body>
    <div class="login">
    <h2 class="title">Iniciar sesión</h2>
    <form class="login-form" method="POST" action="consultas/consulta_login.php">
        <label class="form-label" for="email">Correo electrónico:</label>
        <input class="form-input" type="email" id="email" name="email" required>
        
        <label class="form-label" for="password">Contraseña:</label>
        <input class="form-input" type="password" id="password" name="password" required>
        
        <button class="form-button" type="submit">Ingresar</button>
    </form>
    </div>
</body>
</html>