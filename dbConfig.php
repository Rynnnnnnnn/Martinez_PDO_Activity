<?php

$host = 'localhost';
$db = 'CoffeeShop';
$user = 'root';
$pass = '';

// Set the DSN (Data Source Name)
$dsn = "mysql:host=$host;dbname=$db;charset=utf8mb4";

try {
    $pdo = new PDO($dsn, $user, $pass);
    
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
} catch (PDOException $e) {
    
    die("Connection failed: " . $e->getMessage());
}
?>
