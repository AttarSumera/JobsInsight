<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Database connection
    $conn = new mysqli('127.0.0.1', 'root', '', 'jobsinsight');

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get form data
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

    // File upload handling
    $targetDirectory = "upload_resume_contact/";
    $resumeFileName = basename($_FILES["userfile"]["name"]);
    $targetFilePath = $targetDirectory . $resumeFileName;
    $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

    // Check file format
    if (in_array($fileType, array("pdf", "doc", "docx"))) {
        // Upload file
        move_uploaded_file($_FILES["userfile"]["tmp_name"], $targetFilePath);

        // Insert data into the database
        $sql = "INSERT INTO institute_data (name, email, mobile, gender, dob, address, city, country, post_applied_for, applied_country, resume_path)
                VALUES ('$name', '$email', '$mobile', '$gender', '$dob', '$address', '$city', '$country', '$post_applied_for', '$applied_country', '$targetFilePath')";

        if ($conn->query($sql) === TRUE) {
            echo "Data saved successfully.";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Invalid file format. Only PDF, DOC, and DOCX files are allowed.";
    }

    // Close database connection
    $conn->close();
}
?>
