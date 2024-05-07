<?php
session_start();

if (!isset($_SESSION['username'])) {
    header('Location: index.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    // Database connection
    $conn = new mysqli('localhost', 'root', '', 'user_authentication');

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Escape the id to prevent SQL injection
    $id = $conn->real_escape_string($_GET['id']);

    // Prepare and execute SQL statement to delete the submission
    $sql = "DELETE FROM research_submissions WHERE id = '$id'";
    if ($conn->query($sql) === TRUE) {
        // Redirect back to user landing page after successful deletion
        header('Location: user_landing.php');
        exit();
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    $conn->close();
} else {
    header('Location: user_landing.php'); // Redirect back to user landing page if id is not provided
    exit();
}
?>
