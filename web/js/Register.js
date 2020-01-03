$(function () {
    $("#bo").popover();
});

var username = document.getElementById("username_reg").value;
var password = document.getElementById("password_reg").value;
var password_c = document.getElementById("password_c_reg").value;
var email = document.getElementById("useremail_reg").value;
var code = document.getElementById("captcha_reg").value;

$("#username_reg").blur(function () {
    if (username === "") {
        $("#username_reg").popover('show');
    }
});
$("#username_reg").focus(function () {
    $("#username_reg").popover('hide');
});


$("#captcha_reg").blur(function () {
    if (code === "") {
        $("#captcha_reg").popover('show');
    }
});
$("#captcha_reg").focus(function () {
    $("#captcha_reg").popover('hide');
});

$("#useremail_reg").blur(function () {
    if (email === "") {
        $("#useremail_reg").popover('show');
    }
});
$("#useremail_reg").focus(function () {
    $("#useremail_reg").popover('hide');
});


$("#password_reg").blur(function () {
    if (username === "") {
        $("#password_reg").popover('show');
    }
});
$("#password_reg").focus(function () {
    $("#password_reg").popover('hide');
});


$("#password_c_reg").blur(function () {
    if (password_c === "") {
        $("#password_c_reg").popover('show');
    } else if (password_c !== password) {
        $("#password_c_reg").popover('show');
    }
});

$("#password_c_reg").focus(function () {
    $("#password_c_reg").popover('hide');
});


function register() {
    if (username === "") {
        $.jGrowl("用户名不能为空！", {header: '提醒'});
    } else if (email === "") {
        $.jGrowl("邮箱不能为空！", {header: '提醒'});
    } else if (password === "") {
        $.jGrowl("密码不能为空！", {header: '提醒'});
    } else if (password_c === "") {
        $.jGrowl("请再次输入密码！", {header: '提醒'});
    } else if (password_c !== password) {
        $.jGrowl("2次密码输入不一致", {header: '提醒'});
    } else if (code === "") {
        $.jGrowl("验证码不能为空！", {header: '提醒'});
    } else if (!document.getElementById("agree").checked) {
        $.jGrowl("请先阅读并同意用户协议！", {header: '提醒'});
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
    } else if (!pattern.test(email)) {
        $.jGrowl("邮箱不合法", {header: '提醒'});
        document.getElementById("r_email").focus();
        return false;
    }
}


function AjaxFunc() {
    checkGender();
    var username =  $("#username_reg").value;
    var password = $("#password_reg").value;
    var email =$("#useremail_reg").value;
    var code =$("#captcha_reg").value;
    $.ajax({
        type: 'post',
        url: "/user",
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