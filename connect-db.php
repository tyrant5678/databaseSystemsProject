<?php

$sname= "localhost";

$unmae= "dev1";

$pass = "password";

$db_name = "statify";

$conn = mysqli_connect($sname, $unmae, $pass, $db_name);

if (!$conn) {

    echo "Connection failed!";

}

// if ($conn) {
//     echo 'connected';
//   } else {
//     echo 'not connected';
//   }

?>