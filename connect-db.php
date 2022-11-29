<?php

$sname= "localhost:3306";

$unmae= "root";

$pass = "";

$db_name = "statify";

$conn = mysqli_connect($sname, $unmae, $pass, $db_name);

if (!$conn) {

    echo "Connection failed!";

}

?>