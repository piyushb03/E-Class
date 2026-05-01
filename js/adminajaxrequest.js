function checkAdminLogin() {
    var adminemail = $("#adminemail").val();
    var adminpass = $("#adminpass").val();
    $.ajax({
        url: 'Admin/adminLogin.php',
        method: 'POST',
        data: {
            adminemail: adminemail,
            adminpass: adminpass
        },
        success: function(data){
            if(data.trim() == '"OK"'){
                window.location.href = "Admin/adminDashboard.php";
            } else {
                $("#adminStatusLogMsg").html('<small style="color:red;">Invalid Email or Password!</small>');
            }
        }
    });
}
