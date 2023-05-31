<?php
// This file should normally be put in a folder with certain security access right
// remember to change the username and password 


$conn = mysqli_connect("localhost","root", " ","coursework2" );
if(!$conn) {
    die ("Error connecting to MySQL: " . mysqli_error($conn));
}

$db_select_success =  mysqli_select_db($conn, "icelanddata-cs255-cw");

if(!$db_select_success) {
    die ("Error selecting database: ".mysqli_error($conn));
} else {
	//echo "MySQL database: cdcol selected. <br/>";
}
?>