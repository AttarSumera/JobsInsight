<?php
// Simulated list of jobs (replace with your actual data from a database)
$jobs = array(
    array('company_name' => 'Web Designer', 'location' => 'Stuttgart'),
    array('company_name' => 'Create Paper', 'location' => 'Pekin'),
    array('company_name' => 'Social Road', 'location' => 'San Francisco'),
    array('company_name' => 'Point Design', 'location' => 'Tempe'),
);

// Retrieve user inputs
$categoryInput = strtolower($_POST['categoryInput']);
$locationInput = strtolower($_POST['locationInput']);

// Filter jobs based on user inputs
$results = array_filter($jobs, function ($job) use ($categoryInput, $locationInput) {
    $category = strtolower($job['company_name']);
    $location = strtolower($job['location']);

    return (
        (empty($categoryInput) || strpos($category, $categoryInput) !== false) &&
        (empty($locationInput) || strpos($location, $locationInput) !== false)
    );
});

// Display search results
if (empty($results)) {
    echo '<div class="alert alert-warning" role="alert">No matching jobs found.</div>';
} else {
    foreach ($results as $result) {
        echo '<div class="offert-wrapper">';
        // Display job details here based on your HTML structure
        // You can access the company name using $result['company_name']
        // and location using $result['location']
        // echo '<strong>' . $result['title'] . '</strong><br>';
        echo 'Category: ' . $result['company_name'] . '<br>';
        echo 'Location: ' . $result['location'];
        echo '</div>';
    }
}
?>
