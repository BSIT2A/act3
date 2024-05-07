<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    header('Location: index.php');
    exit();
}

$role = isset($_SESSION['role']) ? $_SESSION['role'] : 'user'; // Default role is 'user'

if ($role !== 'user') {
    header('Location: landing_login.php');
    exit();
}

$welcome_message = "Welcome, User " . $_SESSION['username'];

// Database connection
$conn = new mysqli('localhost', 'root', '', 'user_authentication');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch research submissions from the database
$sql = "SELECT * FROM research_submissions";
$result = $conn->query($sql);
?>

<?php


// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    header('Location: index.php');
    exit();
}

$role = isset($_SESSION['role']) ? $_SESSION['role'] : 'user'; // Default role is 'user'

if ($role !== 'user') {
    header('Location: landing_login.php');
    exit();
}

$welcome_message = "Welcome, User " . $_SESSION['username'];

// Database connection
$conn = new mysqli('localhost', 'root', '', 'user_authentication');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch research submissions from the database
$search_query = isset($_GET['search_query']) ? $_GET['search_query'] : '';
$search_query = '%' . $conn->real_escape_string($search_query) . '%';
$sql = "SELECT * FROM research_submissions 
        WHERE name LIKE '$search_query' 
        OR middle_name LIKE '$search_query' 
        OR last_name LIKE '$search_query' 
        OR technical_critic LIKE '$search_query' 
        OR technical_adviser LIKE '$search_query' 
        OR research_title LIKE '$search_query'";
$result = $conn->query($sql);
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Landing Page</title>
    <style>
    html, body {
    height: 100%;
    margin: 0;
}
    body {
    font-family: Arial, sans-serif;
    margin: 20px; /* Add margin to body */
    padding: 0;
    background: linear-gradient(45deg, #ffcccc, #ff6699, #ff99cc, #ff99ff, #cc99ff, #9966ff, #6666ff);
    background-size: 400% 400%;
    animation: gradientAnimation 10s ease infinite;
    position: relative;
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
    margin: 0 auto; /* Center the form horizontally */
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}

input[type="text"],
input[type="password"],
select {
    width: 96.40%;
    padding: 10px;
    margin-bottom: 20px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

button {
    width: 120px;
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

.search-bar {
        margin-bottom: 20px;
    }

    .search-bar input[type="text"] {
        width: 300px;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .search-bar button {
    width: 120px;
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

</style>
</head>
<body>
    <h2><?php echo $welcome_message; ?></h2>
    <div class="search-bar">
        <form method="GET" action="user_landing.php">
            <input type="text" name="search_query" placeholder="Search by title, critic, adviser, or name">
            <button type="submit">Search</button>
            <button type="button" onclick="window.location.href='user_landing.php'">Cancel</button>
        </form>
    </div>
    

    
    <table class="blurred-form">
        <thead>
            <tr>
                <th>Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Technical Critic</th>
                <th>Technical Adviser</th>
                <th>Research Title</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row['name'] . "</td>";
                    echo "<td>" . $row['middle_name'] . "</td>";
                    echo "<td>" . $row['last_name'] . "</td>";
                    echo "<td>" . $row['technical_critic'] . "</td>";
                    echo "<td>" . $row['technical_adviser'] . "</td>";
                    echo "<td>" . $row['research_title'] . "</td>";
                    echo "<td><a href=\"view_abstract.php?id=".$row['id']."\"><button>View</button></a></td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='7'>No research submissions found.</td></tr>";
            }
            ?>
        </tbody>
    </table>
    <br><br><br><br><br><br><br><br>
    <a href="logout.php"><button>Logout</button></a>

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






