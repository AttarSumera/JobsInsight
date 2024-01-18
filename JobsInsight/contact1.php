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
        $email = $conn->real_escape_string($_POST['emailAddress']);
        $education = $conn->real_escape_string($_POST['Education']);
        $mobile_number = $conn->real_escape_string($_POST['mobile']);
    
        // Handle file upload
        $resume_path = "uploads/" . basename($_FILES["resume"]["name"]);
        move_uploaded_file($_FILES["resume"]["tmp_name"], $resume_path);
    
        // Sanitize and escape data
        $position = $conn->real_escape_string($_POST['position']);
        $message = $conn->real_escape_string($_POST['message']);
    
        // Insert data into the database
        $sql = "INSERT INTO form_submissions (name, email, education, mobile_number, resume_path, position, message)
                VALUES ('$name', '$email', '$education', '$mobile_number', '$resume_path', '$position', '$message')";
    
        if ($conn->query($sql) === TRUE) {
            echo "Record inserted successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    
        $conn->close();
    }
    ?>
    