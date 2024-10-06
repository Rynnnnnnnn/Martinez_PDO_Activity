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
        // SQL query to fetch all products
        $sql = "SELECT Product_ID, Product_Name, UnitPrice FROM Products";
        $stmt = $pdo->query($sql);

        // Check if there are any products
        if ($stmt->rowCount() > 0) {
            echo "<table border='1'>";
            echo "<tr><th>Product ID</th><th>Product Name</th><th>Unit Price</th></tr>";

            // Display each product in the table
            foreach ($stmt as $row) {
                echo "<tr>";
                echo "<td>" . $row['Product_ID'] . "</td>";
                echo "<td>" . $row['Product_Name'] . "</td>";
                echo "<td>" . $row['UnitPrice'] . "</td>";
                echo "</tr>";
            }

            echo "</table>";
        } else {
            echo "No products found.";
        }
    } else {
        echo "Database connection failed.";
    }
  ?>
</body>
</html>
