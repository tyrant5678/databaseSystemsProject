<?php
session_start();
include "connect-db.php";

if(isset($_POST['username']) && isset($_POST['password'])) {

    function validate($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
}

$username = validate($_POST['username']);
$password = validate($_POST['password']);
$hashed = password_verify($password, $row['password']);

if(empty($username)) {
    header ("Location: index.php?error=Username is required");
    exit();
}

if(empty($password)) {
    header ("Location: index.php?error=Password is required");
    exit();
}

$sql = "SELECT * FROM users WHERE username='$username'";

$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result) === 1) {
    $row = mysqli_fetch_assoc($result);
    if($row['username'] === $username && password_verify($password, $row['password'])) {
        echo "Logged In";
        $_SESSION['username'] = $row['username'];
        $_SESSION['name'] = $row['first_name'];
        $_SESSION['id'] = $row['userID'];
        header("Location: home.php");
        exit();
    }
    else{
        header("Location: index.php?error=Incorrect Username or Password");
        exit();
    }
}
else {
    header("Location: index.php?error=Incorrect Username or Password");
    exit();
}

?>