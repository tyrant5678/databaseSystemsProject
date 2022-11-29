

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Registration Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    <head>

    <body>
        <div class="register">
            <h1>Register</h1>
            <form action="register.php" method="post">
                <label for="first_name"> </label>
                <input type="text" name="first_name" placeholder="First Name" id="first_name" required>
                <label for="last_name"> </label>
                <input type="text" name="last_name" placeholder="Last Name" id="last_name" required>
                <label for="username"> </label>
                <input type="text" name="username" placeholder="Username" id="username" required>
                <label for="password"> </label>
                <input type="password" name="password" placeholder="Password" id="password" required>
                <label for="email"> </label>
                <input type="email" name="email" placeholder="Email" id="email" required>
                <input type="submit" value="Register">
</form>
</div>

<?php include('footer.html') ?>
</body>
</html>