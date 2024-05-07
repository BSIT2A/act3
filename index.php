<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Handle login
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Replace 'your_database_host', 'your_database_username', 'your_database_password', and 'user_authentication' with your actual database credentials
    $conn = new mysqli('localhost', 'root', '', 'user_authentication');

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $_SESSION['username'] = $username;
        $_SESSION['role'] = $row['role']; // Store the user's role in the session

        // Redirect based on user's role
        if ($_SESSION['role'] === 'admin') {
            header('Location: admin_landing.php'); // Redirect to admin landing page
        } else {
            header('Location: user_landing.php'); // Redirect to user landing page
        }
        exit();
    } else {
        $error_message = "Invalid username or password";
    }

    $conn->close();
}

if (isset($_SESSION['username'])) {
    // If already logged in, redirect based on role
    if ($_SESSION['role'] === 'admin') {
        header('Location: admin_landing.php'); // Redirect to admin landing page
    } else {
        header('Location: user_landing.php'); // Redirect to user landing page
    }
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styler.css">
</head>
<body>
    
    <div class="sparks"></div>
    
    <?php if (isset($error_message)) { ?>
        <p style="color: red;"><?php echo $error_message; ?></p>
    <?php } ?>
    <form method="post" action="" class="blurred-form">
        <h2>Login</h2>
        <label for="username">Username:</label>
        <input type="text" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br>
        <button type="submit">Login</button>
        <button type="button" onclick="location.href='register.php';">Register</button>
    </form>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const sparksContainer = document.querySelector('.sparks');

            document.addEventListener('mousedown', (e) => {
                // Create sparks
                const spark = document.createElement('div');
                spark.classList.add('spark');
                spark.style.left = (e.clientX - 2) + 'px';
                spark.style.top = (e.clientY - 2) + 'px';
                sparksContainer.appendChild(spark);
                
                // Remove sparks after animation
                setTimeout(() => {
                    spark.remove();
                }, 1000);
            });
        });
    </script>
</body>
</html>
