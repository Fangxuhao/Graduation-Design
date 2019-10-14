function login() {
    var password = document.getElementById("password_login").value;
    var email = document.getElementById("useremail_login").value;
    var code = document.getElementById("captcha_login").value;
    xmlhttp = new XMLHttpRequest();


    if (email == "") {
        $.jGrowl("邮箱不能为空！", {header: '提醒'});
    } else if (password == "") {
        $.jGrowl("密码不能为空！", {header: '提醒'});
    } else if (code == "") {
        $.jGrowl("验证码不能为空！", {header: '提醒'});
    } else {
        loginUp();
    }
    return false;
}

function loginUp() {
    var password = document.getElementById("password_login").value;
    var email = document.getElementById("useremail_login").value;
    var code = document.getElementById("captcha_login").value;
    var remember;

    if (document.getElementById("remember").checked) {
        remember="true";
    }else {
        remember="true";
    }

    $.ajax({
        type: 'post',
        url: "/login",
        dataType: "text",
        data: {"pwd": password, "email": email, "code": code,"remember":remember},
        success: function (data) {
            if (data == -1) {
                $.jGrowl("账号密码错误，请重新输入", {header: '提醒'});
                var form_l = document.getElementById("login_from");
                form_l.reset();
            } else if (data == -2) {
                alert("验证码错误");
            } else if (data == 1) {
                window.location.assign("personal.jsp")
            }
        },
        error: function (xhr, type) {
            console.log(xhr);
        }
    });
}