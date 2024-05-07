<?php
session_start();

// Check if the user is logged in and is an admin
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header('Location: index.php');
    exit();
}

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate and sanitize input data
    $name = $_POST['name'];
    $middle_name = $_POST['middle_name'] ?? null;
    $last_name = $_POST['last_name'];
    $technical_critic = $_POST['technical_critic'] ?? null;
    $technical_adviser = $_POST['technical_adviser'] ?? null;
    $research_title = $_POST['research_title'];
    $abstract = $_POST['abstract'];

    // Insert the data into the database
    $conn = new mysqli('localhost', 'root', '', 'user_authentication');

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO research_submissions (name, middle_name, last_name, technical_critic, technical_adviser, research_title, abstract) VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);

    if (!$stmt) {
        die("Error preparing statement: " . $conn->error);
    }

    $stmt->bind_param("sssssss", $name, $middle_name, $last_name, $technical_critic, $technical_adviser, $research_title, $abstract);
    
    if ($stmt->execute()) {
        // Submission added successfully, redirect to admin landing page
        header('Location: admin_landing.php');
        exit();
    } else {
        // Error occurred while adding submission
        $error_message = "Error adding submission: " . $conn->error;
    }

    $stmt->close();
    $conn->close();
} else {
    // Redirect to the admin landing page if the form is not submitted directly
    header('Location: admin_landing.php');
    exit();
}
?>
