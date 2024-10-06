<?php require_once 'core/dbConfig.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products List (Using fetch())</title>
</head>
<body>
  <?php 
    if ($pdo) {
        // SQL query to select all products
        $sql = "SELECT * FROM Products";
        $stmt = $pdo->query($sql);

        // Fetch one row at a time
        echo "<pre>";
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            print_r($row);
        }
        echo "</pre>";
    } else {
        echo "Database connection failed.";
    }
  ?>
</body>
</html>
