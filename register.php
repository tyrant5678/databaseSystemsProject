<?php

include "connect-db.php";

if(!isset($_POST['username'], $_POST['password'], $_POST['email'])) {
    exit('Empty Field(s)');
}

if($stmt = $conn->prepare('SELECT userID, password FROM users WHERE username = ?')) {
    $stmt->bind_param('s', $_POST['username']);
    $stmt->execute();
    $stmt->store_result();

    if($stmt->num_rows>0) {
        echo 'Username Already Exists';
    }
    else {
        if($stmt = $conn->prepare('INSERT INTO users (first_name, last_name, username, password, email) VALUES (?, ?, ?, ?, ?)')) {
            $stmt->bind_param('sssss', $_POST['first_name'], $_POST['last_name'], $_POST['username'], $_POST['password'], $_POST['email']);
            $stmt->execute();
            echo 'Account Successfully Created';
            header("Location: index.php");
            exit();
        }
        else {
            echo 'Error Occurred';
        }
    }
    $stmt->close();
}
else{
    echo 'Error Occurred';
}
?>