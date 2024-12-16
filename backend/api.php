<?php
include('db.php');

// CRUD operations (Example: Fetch all data)
header('Content-Type: application/json');

$query = "SELECT * FROM users";
$stmt = $pdo->query($query);
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($rows);
?>

