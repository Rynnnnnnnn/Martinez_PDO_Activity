<?php require_once 'core/dbConfig.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Product</title>
</head>
<body>
  <?php 
    if ($pdo) {
        // Product ID that will be deleted
        $productID = 34;

        // SQL query to delete the product
        $sql = "DELETE FROM Products WHERE Product_ID = $productID";

        // Execute the query
        if ($pdo->exec($sql)) {
            echo "Product with ID $productID has been deleted successfully.";
        } else {
            echo "Failed to delete the product.";
        }
    } else {
        echo "Database connection failed.";
    }
  ?>
</body>
</html>
