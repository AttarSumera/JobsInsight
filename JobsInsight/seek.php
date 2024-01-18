<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "jobsinsight";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data
$name = $_POST['name'];
$email = $_POST['email'];
$mobile = $_POST['mobile'];
$gender = $_POST['gender'];
$dob = $_POST['year'] . '-' . $_POST['month'] . '-' . $_POST['day'];
$address = $_POST['address'];
$city = $_POST['city'];
$country = $_POST['country'];
$post_applied_for = $_POST['post'];
$applied_country = $_POST['appcountry'];

// Handle file upload
$uploadDir = 'uploads/';
$resumeFileName = '';

if (!empty($_FILES['userfile']['name'])) {
    $resumeFileName = $uploadDir . basename($_FILES['userfile']['name']);
    move_uploaded_file($_FILES['userfile']['tmp_name'], $resumeFileName);
}

// Insert data into the database
$sql = "INSERT INTO applicants (name, email, mobile, gender, dob, address, city, country, post_applied_for, applied_country, resume_filename) 
        VALUES ('$name', '$email', '$mobile', '$gender', '$dob', '$address', '$city', '$country', '$post_applied_for', '$applied_country', '$resumeFileName')";

if ($conn->query($sql) === TRUE) {
    echo "Record inserted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
