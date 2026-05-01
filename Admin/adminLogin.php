<?php
if(!isset($_SESSION)){
    session_start();
}
include('../dbConnection.php');

if(isset($_POST['adminemail']) && isset($_POST['adminpass'])){
    $adminemail = $_POST['adminemail'];
    $adminpass = $_POST['adminpass'];

    $stmt = $conn->prepare("SELECT admin_email, admin_pass FROM admin WHERE admin_email=? AND admin_pass=?");
    $stmt->bind_param("ss", $adminemail, $adminpass);
    $stmt->execute();
    $result = $stmt->get_result();

    if($result->num_rows == 1){
        $_SESSION['is_admin_login'] = true;
        $_SESSION['adminemail'] = $adminemail;
        echo json_encode("OK");
    } else {
        echo json_encode("Failed");
    }
}
?>
