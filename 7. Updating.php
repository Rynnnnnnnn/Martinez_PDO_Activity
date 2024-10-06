<?php
require_once 'core/dbConfig.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the product ID and new price from the form
    $product_id = $_POST['product_id'];
    $new_price = $_POST['new_price'];

    // Update the product price
    $sql = "UPDATE Products SET UnitPrice = ? WHERE Product_ID = ?";
    $stmt = $pdo->prepare($sql);

    // Execute the query with values from the form
    if ($stmt->execute([$new_price, $product_id])) {
        echo "Price updated.";
    } else {
        echo "Update failed.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product Price</title>
</head>
<body>

<!-- Form to update product price -->
<form method="POST">
    <label>Product ID:</label>
    <input type="number" name="product_id" required><br><br>

    <label>New Price:</label>
    <input type="text" name="new_price" required><br><br>

    <button type="submit">Update</button>
</form>

</body>
</html>
