<?php

$host = "sql309.infinityfree.com";
$user = "if0_41372192";
$password = "FsAlYWzzvqg";
$database = "if0_41372192_placement";

$conn = mysqli_connect($host, $user, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully";

?>