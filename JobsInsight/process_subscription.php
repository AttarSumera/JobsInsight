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
        $email = $conn->real_escape_string($_POST['email']);
        $subscription_type = $conn->real_escape_string($_POST['subscription_type']);
    
        // Check if the email is already subscribed
        $check_sql = "SELECT * FROM subscribers WHERE email='$email' AND subscription_type='$subscription_type'";
        $result = $conn->query($check_sql);
    
        if ($result->num_rows > 0) {
            echo "You are already subscribed to the newsletter.";
        } else {
            // Insert data into the database
            $sql = "INSERT INTO subscribers (email, subscription_type) VALUES ('$email', '$subscription_type')";
    
            if ($conn->query($sql) === TRUE) {
                echo "Subscription to newsletter successful";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
    
        $conn->close();
    }
    ?>
    