<?php
session_start();
if(!isset($_SESSION['is_admin_login'])){
    header('Location: ../index.php');
    exit;
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../css/style.css">
    <style>
        body { padding: 2rem; }
        .dashboard { background: white; padding: 2rem; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
    </style>
</head>
<body>
    <div class="dashboard">
        <h1>Welcome Admin</h1>
        <p>You are logged in as <?php echo htmlspecialchars($_SESSION['adminemail']); ?></p>
        <a href="../logout.php" class="btn">Logout</a>
        <br><br>
        <h3>Dashboard features coming soon...</h3>
        <ul>
            <li>Manage Courses</li>
            <li>Manage Students</li>
            <li>View Feedback</li>
        </ul>
    </div>
</body>
</html>
