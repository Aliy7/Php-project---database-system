<?php

require_once 'db.php';

function display_data(){
    global $conn;
    $query = "SELECT custid FROM cust";
    $result = mysqli_query($conn, $query);
    return $result;
}
?>