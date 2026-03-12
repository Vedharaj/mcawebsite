<?php

$conn = mysqli_connect("localhost","root","","placement");

if($conn){
    // echo "Database connected!";
}else{
    echo "Connection failed";
}

?>