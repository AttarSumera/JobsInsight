<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Database connection parameters
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "jobsinsight";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve form data
    $name = $conn->real_escape_string($_POST['name']);
    $email = $conn->real_escape_string($_POST['email']);
    $mobileNumber = $conn->real_escape_string($_POST['mobileNumber']);

    // Insert data into the database
    $sql = "INSERT INTO contact_entries (name, email, mobile_number)
            VALUES ('$name', '$email', '$mobileNumber')";

    if ($conn->query($sql) === TRUE) {
        echo "Record inserted successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
