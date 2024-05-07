<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    header('Location: index.php');
    exit();
}

// Check if the ID parameter is set
if (!isset($_GET['id'])) {
    header('Location: user_landing.php');
    exit();
}

$id = $_GET['id'];

// Database connection
$conn = new mysqli('localhost', 'root', '', 'user_authentication');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch research submission details from the database
$sql = "SELECT * FROM research_submissions WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    header('Location: user_landing.php');
    exit();
}

$row = $result->fetch_assoc();
$title = $row['research_title'];
$abstract = $row['abstract'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Abstract</title>
    <style>
    html, body {
    height: 100%;
    margin: 0;
}
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(45deg, #ffcccc, #ff6699, #ff99cc, #ff99ff, #cc99ff, #9966ff, #6666ff);
    background-size: 400% 400%;
    animation: gradientAnimation 10s ease infinite;
    position: relative;
}
p {
text-align: justify;
text-justify: inter-word;
}
@keyframes gradientAnimation {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

.blurred-form {
    background-color: rgba(255, 255, 255, 0.3);
    backdrop-filter: blur(10px);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    width: 600px;
}



label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}

input[type="text"],
input[type="password"]
{
    width: 95.40%;
    padding: 10px;
    margin-bottom: 20px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

button {
    width: 100%;
    padding: 10px;
    border: 1px solid #333;
    border-radius: 5px;
    background-color: transparent;
    color: #333;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
}

button:hover {
    background-color: #333;
    color: #fff;
}

.sparks {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    pointer-events: none;
}

.spark {
    position: absolute;
    width: 10px;
    height: 10px;
    border-radius: 50%;
    background-color: #fff;
    opacity: 0.7;
    animation: sparkAnimation 1s linear;
}

@keyframes sparkAnimation {
    0% {
        transform: scale(1);
        opacity: 0.7;
    }
    100% {
        transform: scale(0);
        opacity: 0;
    }
}
select {
    width: 100px;
    padding: 10px;
    margin-bottom: 20px;
    border-radius: 5px;
    border: 1px solid #ccc;
}
</style>
</head>
<body><br><br><br><br>
<form method="post" action="" class="blurred-form">
    <h2><center><?php echo $title; ?></center></h2>
    <p><?php echo $abstract; ?></p>
    <a href="user_landing.php"><button type="button" >Back</button></a>
</form>

</body>
</html>
