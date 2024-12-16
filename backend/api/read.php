<?php
header('Content-Type: application/json');
$pdo = new PDO('mysql:host=db;dbname=testdb', 'root', 'rootpassword');
$stmt = $pdo->query('SELECT * FROM items');
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($data);
?>
