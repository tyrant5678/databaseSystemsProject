<?php

$sname= "localhost:3306";

$unmae= "ethan_a";

$pass = "bayhawks79";

$db_name = "statify";

$conn = mysqli_connect($sname, $unmae, $pass, $db_name);

if (!$conn) {

    echo "Connection failed!";

}

?>