<?php
if(!isset($_SESSION)){
    session_start();
}
include('../dbConnection.php');

if(isset($_POST['stuLogEmail']) && isset($_POST['stuLogPass'])){
    $stuLogEmail = $_POST['stuLogEmail'];
    $stuLogPass = $_POST['stuLogPass'];

    // Prevent SQL Injection using Prepared Statements
    $stmt = $conn->prepare("SELECT stu_email, stu_pass FROM students WHERE stu_email=? AND stu_pass=?");
    $stmt->bind_param("ss", $stuLogEmail, $stuLogPass);
    $stmt->execute();
    $result = $stmt->get_result();

    if($result->num_rows == 1){
        $_SESSION['is_login'] = true;
        $_SESSION['stuLogEmail'] = $stuLogEmail;
        echo json_encode("OK");
    } else {
        echo json_encode("Failed");
    }
}
?>
