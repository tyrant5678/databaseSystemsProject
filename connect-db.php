<?php

$sname= "localhost:3306";

$unmae= "joseph";

$pass = "josephDBpass";

$db_name = "statify2";

$conn = mysqli_connect($sname, $unmae, $pass, $db_name);

if (!$conn) {

    echo "Connection failed!";

}

?>