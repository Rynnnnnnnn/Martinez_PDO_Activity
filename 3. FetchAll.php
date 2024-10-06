<?php require_once 'core/dbConfig.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products List</title>
</head>
<body>
  <?php 
    if ($pdo) {
        // SQL query to select all products
        $sql = "SELECT * FROM Products";
        $stmt = $pdo->query($sql);

        // Fetch all rows as an associative array
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Print the results using print_r() with <pre> tag in between
        echo "<pre>";
        print_r($rows);
        echo "</pre>";
    } else {
        echo "Database connection failed.";
    }
  ?>
</body>
</html>
