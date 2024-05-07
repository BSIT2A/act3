<?php
session_start();

// Check if the user is logged in and is an admin
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header('Location: index.php');
    exit();
}

// Check if submission ID is provided
if (!isset($_GET['id'])) {
    header('Location: admin_landing.php');
    exit();
}

// Get the submission ID
$submission_id = $_GET['id'];

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

    // Update the data in the database
    $conn = new mysqli('localhost', 'root', '', 'user_authentication');

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "UPDATE research_submissions SET name=?, middle_name=?, last_name=?, technical_critic=?, technical_adviser=?, research_title=?, abstract=? WHERE id=?";
    $stmt = $conn->prepare($sql);

    if (!$stmt) {
        die("Error preparing statement: " . $conn->error);
    }

    $stmt->bind_param("sssssssi", $name, $middle_name, $last_name, $technical_critic, $technical_adviser, $research_title, $abstract, $submission_id);
    
    if ($stmt->execute()) {
        // Submission updated successfully, redirect to admin landing page
        header('Location: admin_landing.php');
        exit();
    } else {
        // Error occurred while updating submission
        $error_message = "Error updating submission: " . $conn->error;
    }

    $stmt->close();
    $conn->close();
}

// Fetch submission details from the database
$conn = new mysqli('localhost', 'root', '', 'user_authentication');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM research_submissions WHERE id=?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Error preparing statement: " . $conn->error);
}

$stmt->bind_param("i", $submission_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows == 0) {
    // Submission not found, redirect to admin landing page
    header('Location: admin_landing.php');
    exit();
}

$row = $result->fetch_assoc();

// Close connections
$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Submission</title>
</head>
<body>
    <h2>Edit Submission</h2>
    <?php if (isset($error_message)) { ?>
        <p style="color: red;"><?php echo $error_message; ?></p>
    <?php } ?>
    <form method="post" action="">
        <label for="name">Name:</label>
        <input type="text" name="name" value="<?php echo $row['name']; ?>" required><br>
        <label for="middle_name">Middle Name:</label>
        <input type="text" name="middle_name" value="<?php echo $row['middle_name']; ?>"><br>
        <label for="last_name">Last Name:</label>
        <input type="text" name="last_name" value="<?php echo $row['last_name']; ?>" required><br>
        <label for="technical_critic">Technical Critic:</label>
        <input type="text" name="technical_critic" value="<?php echo $row['technical_critic']; ?>"><br>
        <label for="technical_adviser">Technical Adviser:</label>
        <input type="text" name="technical_adviser" value="<?php echo $row['technical_adviser']; ?>"><br>
        <label for="research_title">Research Title:</label>
        <input type="text" name="research_title" value="<?php echo $row['research_title']; ?>" required><br>
        <label for="abstract">Abstract:</label>
        <textarea name="abstract" rows="5" required><?php echo $row['abstract']; ?></textarea><br>
        <button type="submit">Update</button>
    </form>
</body>
</html>
