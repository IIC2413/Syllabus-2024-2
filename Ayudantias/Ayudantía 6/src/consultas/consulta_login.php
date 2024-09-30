<?php
session_start();
include('../config/conexion.php'); 

$email = $_POST['email'];
$password = $_POST['password'];

$query = $db->prepare("SELECT * FROM usuarios WHERE email = :email LIMIT 1");
$query->bindParam(':email', $email);
$query->execute();
$user = $query->fetch();

if ($user && $user['password'] === $password) { // Esta comparación debe ser con password_verify() si la contraseña está hasheada
    // Iniciar sesión y establecer el rol
    $_SESSION['user'] = $user['email'];
    $_SESSION['role'] = $user['role'];

    // Redirigir según el rol
    if ($user['role'] === 'admin') {
        header("Location: ../admin.php");
    } else {
        header("Location: ../user.php"); 
    }
    exit();
} else {
    echo "Correo electrónico o contraseña incorrectos.";
}

?>