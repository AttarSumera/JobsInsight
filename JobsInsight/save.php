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
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$company = $_POST['company'];
$email = $_POST['email'];
$mobile = $_POST['mobile'];
$other = $_POST['other'];

// Insert data into the database
$sql = "INSERT INTO employers (fname, lname, company, email, mobile, other) VALUES ('$fname', '$lname', '$company', '$email', '$mobile', '$other')";

if ($conn->query($sql) === TRUE) {
    echo "Record inserted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
