<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    header('Location: index.php');
    exit();
}

$role = isset($_SESSION['role']) ? $_SESSION['role'] : 'user';

if ($role !== 'admin') {
    header('Location: landing_login.php');
    exit();
}

$welcome_message = "Welcome, Admin " . $_SESSION['username'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Landing Page</title>
    <style>
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

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

p {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #333;
    margin-bottom: 20px;
}

table th, table td {
    padding: 10px;
    border: 1px solid #333;
}

a {
    text-decoration: none;
    color: #333;
}

a:hover {
    color: #fff;
}

.add-submission-form {
    background-color: rgba(255, 255, 255, 0.3);
    backdrop-filter: blur(10px);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    width: 600px;
    margin: 0 auto;
}

.add-submission-form label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}

.add-submission-form input[type="text"],
.add-submission-form textarea {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 20px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

.add-submission-form textarea {
    resize: vertical;
}

.add-submission-form button {
    width: 100%;
    padding: 10px;
    border: 1px solid #333;
    border-radius: 5px;
    background-color: transparent;
    color: #333;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
}

.add-submission-form button:hover {
    background-color: #333;
    color: #fff;
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
</style>
</head>
<body>
    <h2><?php echo $welcome_message; ?></h2>
    <p>This is your admin landing page content.</p>

    <h3>Research Submissions</h3>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Technical Critic</th>
                <th>Technical Adviser</th>
                <th>Research Title</th>
                <th>Abstract</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Fetch and display research submissions from the database -->
            <?php
            $conn = new mysqli('localhost', 'root', '', 'user_authentication');

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT * FROM research_submissions";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row['name'] . "</td>";
                    echo "<td>" . $row['middle_name'] . "</td>";
                    echo "<td>" . $row['last_name'] . "</td>";
                    echo "<td>" . $row['technical_critic'] . "</td>";
                    echo "<td>" . $row['technical_adviser'] . "</td>";
                    echo "<td>" . $row['research_title'] . "</td>";
                    echo "<td>" . $row['abstract'] . "</td>";
                    echo "<td><a href='edit_submission.php?id=" . $row['id'] . "'><button>Edit</button></a> <br><br> <a href='delete_submission.php?id=" . $row['id'] . "'><button>Delete</button></a></td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='8'>No research submissions found</td></tr>";
            }

            $conn->close();
            ?>
        </tbody>
    </table>

    <!-- Add form for adding new submissions -->
    <h3>Add New Research Submission</h3>
    <form method="post" action="add_submission.php" class="add-submission-form">
        <label for="name">Name:</label>
        <input type="text" name="name" required><br>
        <label for="middle_name">Middle Name:</label>
        <input type="text" name="middle_name"><br>
        <label for="last_name">Last Name:</label>
        <input type="text" name="last_name" required><br>
        <label for="technical_critic">Technical Critic:</label>
        <input type="text" name="technical_critic"><br>
        <label for="technical_adviser">Technical Adviser:</label>
        <input type="text" name="technical_adviser"><br>
        <label for="research_title">Research Title:</label>
        <input type="text" name="research_title" required><br>
        <label for="abstract">Abstract:</label>
        <textarea name="abstract" rows="5" required></textarea><br>
        <button type="submit">Submit</button>
    </form>

    <a href="logout.php">Logout</a>
</body>
</html>

