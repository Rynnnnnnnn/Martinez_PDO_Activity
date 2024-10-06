<?php require_once 'core/dbConfig.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Product</title>
</head>
<body>
  <?php 
    if ($pdo) {
        // SQL Insertion
        $sql = "INSERT INTO Products (Product_ID, Product_Name, Category_ID, Supplier_ID, UnitPrice) 
                VALUES (34, 'Coconut Powder', 5, 2, 750.50)";

        // Execute the query 
        if ($pdo->exec($sql)) {
            echo "New product has been added successfully.";
        } else {
            echo "Failed to insert the product.";
        }
    } else {
        echo "Database connection failed.";
    }
  ?>
</body>
</html>
