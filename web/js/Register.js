$(function () {
    $("#bo").popover();
});


$("#username_reg").blur(function () {
    var username = document.getElementById("username_reg").value;
    if (username === "" || username === null) {
        $("#username_reg").popover('show');
    }
});
$("#username_reg").focus(function () {
    $("#username_reg").popover('hide');
});


$("#captcha_reg").blur(function () {
    var code = document.getElementById("captcha_reg").value;
    if (code === "") {
        $("#captcha_reg").popover('show');
    }
});
$("#captcha_reg").focus(function () {
    $("#captcha_reg").popover('hide');
});

$("#useremail_reg").blur(function () {
    var email = document.getElementById("useremail_reg").value;
    if (email === "") {
        $("#useremail_reg").popover('show');
    }
});
$("#useremail_reg").focus(function () {
    $("#useremail_reg").popover('hide');
});


$("#password_reg").blur(function () {
    var password = document.getElementById("password_reg").value;
    if (password === "") {
        $("#password_reg").popover('show');
    }
});
$("#password_reg").focus(function () {
    $("#password_reg").popover('hide');
});


$("#password_c_reg").blur(function () {
    var password_c = document.getElementById("password_c_reg").value;
    var password = document.getElementById("password_reg").value;

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
    var code = $("#captcha_reg").val();
    var email = $("#useremail_reg").val();
    var password_c = $("#password_c_reg").val();
    var password = $("#password_reg").val();
    var username = $("#username_reg").val();
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
    } else if (!document.getElementById("agreement").checked) {
        $.jGrowl("请先阅读并同意用户协议！", {header: '提醒'});
    } else if (checkGender()) {
        AjaxFunc();
    }
    return false;
}

function checkGender() {
    var email = $("#useremail_reg").val();
    //电子邮件的正则表达式
    var pattern = /^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\!\:\|\\\/\(\)\[\]\{\}]+@[a-zA-Z0-9]+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
    if (!pattern.test(email)) {
        $.jGrowl("邮箱不合法", {header: '提醒'});
        document.getElementById("useremail_reg").focus();
        return false;
    }
    return true;
}


function AjaxFunc() {
    var username = $("#username_reg").val();
    var password = $("#password_reg").val();
    var email = $("#useremail_reg").val();
    var code = $("#captcha_reg").val();
    $.post("./user", {
            program: "register",
            name: username,
            pwd:password,
            email:email,
            code:code
        },
        function (data, status) {
            // alert(data);
            if (data === -1||data==="-1") {
                $.jGrowl("邮箱已被占用！请重新输入", {header: '提醒'});
                var form_r = document.getElementById("useremail_reg");
                form_r.reset();
            } else if (data === -2||data==="-2") {
                alert("验证码错误");
            }else if (data===1||data==="1"){
                window.location.href = "index.jsp"
            }
        });



}