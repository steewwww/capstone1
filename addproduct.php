<?php

include("config.php");

if (isset($_POST['insertdata'])) {
    $product_name = $_POST['product_name'];
    $description = $_POST['description'];
    $product_price = $_POST['product_price'];
    $product_qty = $_POST['product_qty'];
    $product_code = $_POST['product_code'];
    $category = $_POST['category'];
   

    $query = "INSERT INTO product(`product_name`,`description`,`product_price`,`product_qty`,`product_code`,`category`) 
    VALUES ('$product_name','$description','$product_price','$product_qty','$product_code','$category')";
    $query_run = mysqli_query($conn, $query);

    if ($query_run) {
        echo '<script> alert("Data Saved"); </script>';
        header('Location: adminproduct.php');
    } else {
        echo '<script> alert("Data Not Saved"); </script>';
    }
}

?>
