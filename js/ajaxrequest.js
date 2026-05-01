function checkStuLogin() {
    var stuLogEmail = $("#stuLemail").val();
    var stuLogPass = $("#stuLpass").val();
    $.ajax({
        url: 'Student/studentLogin.php',
        method: 'POST',
        data: {
            stuLogEmail: stuLogEmail,
            stuLogPass: stuLogPass
        },
        success: function(data){
            if(data.trim() == '"OK"'){
                window.location.href = "index.php";
            } else {
                $("#statusLogMsg").html('<small style="color:red;">Invalid Email or Password!</small>');
            }
        }
    });
}

function addStu() {
    var stuname = $("#stuname").val();
    var stuemail = $("#stuemail").val();
    var stupass = $("#stupass").val();
    $.ajax({
        url: 'Student/addstudent.php',
        method: 'POST',
        data: {
            stuname: stuname,
            stuemail: stuemail,
            stupass: stupass
        },
        success: function(data){
            if(data.trim() == '"OK"'){
                $("#successMsg").html('<span style="color:green;">Registration Successful! Please login.</span>');
            } else {
                $("#successMsg").html('<span style="color:red;">Registration Failed!</span>');
            }
        }
    });
}
