<?php
include('../dbConnection.php');

if(isset($_POST['stuname']) && isset($_POST['stuemail']) && isset($_POST['stupass'])){
    $stuname = $_POST['stuname'];
    $stuemail = $_POST['stuemail'];
    $stupass = $_POST['stupass'];

    // Prevent SQL Injection using Prepared Statements
    $stmt = $conn->prepare("INSERT INTO students (stu_name, stu_email, stu_pass) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $stuname, $stuemail, $stupass);

    if($stmt->execute()){
        echo json_encode("OK");
    } else {
        echo json_encode("Failed");
    }
}
?>
