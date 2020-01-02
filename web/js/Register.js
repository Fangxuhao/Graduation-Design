$(function (){
    $("#bo").popover();
});



function register() {
    var username = document.getElementById("username_reg").value;
    var password = document.getElementById("password_reg").value;
    var password_c = document.getElementById("password_c_reg").value;
    var email = document.getElementById("useremail_reg").value;
    var code = document.getElementById("captcha_reg").value;

    xmlhttp = new XMLHttpRequest();
    if (username === "") {
         $.jGrowl("用户名不能为空！", {header: '提醒'});
    } else if (email === "") {
         $.jGrowl("邮箱不能为空！", {header: '提醒'});
    } else if (password === "") {
        $.jGrowl("密码不能为空！", {header: '提醒'});
    } else if (code === "") {
        $.jGrowl("验证码不能为空！", {header: '提醒'});
    } else if (!document.getElementById("agree").checked) {
        $.jGrowl("请先阅读并同意霸王条款！", {header: '提醒'});
    } else {
        AjaxFunc();
    }
    return false;
}

function checkGender() {
    //获取Email输入域的值
    var email = document.getElementById("r_email").value;
//电子邮件的正则表达式
    var pattern = /^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\!\:\|\\\/\(\)\[\]\{\}]+@[a-zA-Z0-9]+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
    if (email.length === 0) {
        $.jGrowl("邮箱不能为空！", {header: '提醒'});
        return false;
    }
    else if (!pattern.test(email)) {
        $.jGrowl("邮箱不合法", {header: '提醒'});
         document.getElementById("r_email").focus();
        return false;
    }
}


function AjaxFunc() {
    var username = document.getElementById("r_name").value;
    var password = document.getElementById("r_pwd").value;
    var email = document.getElementById("r_email").value;
    var code = document.getElementById("r_code").value;
    $.ajax({
        type: 'post',
        url: "/register",
        dataType: "text",
        data: {"name": username, "pwd": password, "email": email, "code": code},
        success: function (data) {
            if (data === -1) {
                $.jGrowl("邮箱已被占用！请重新输入", {header: '提醒'});
                var form_r = document.getElementById("register_from");
                form_r.reset();
            } else if (data === -2) {
                alert("验证码错误");
            }
        },
        error: function (xhr, type) {
            console.log(xhr);
        }
    });
}