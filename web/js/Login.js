function login() {
    var password = document.getElementById("password_login").value;
    var email = document.getElementById("useremail_login").value;
    var code = document.getElementById("captcha_login").value;

    if (email === "") {
        $.jGrowl("邮箱不能为空！", {header: '提醒'});
    } else if (password === "") {
        $.jGrowl("密码不能为空！", {header: '提醒'});
    } else if (code === "") {
        $.jGrowl("验证码不能为空！", {header: '提醒'});
    } else if(checkGender()){
        loginUp();
    }
    return false;
}

function loginUp() {
    var password = document.getElementById("password_login").value;
    var email = document.getElementById("useremail_login").value;
    var code = document.getElementById("captcha_login").value;
    var remember;
    if (document.getElementById("remember_login").checked) {
        remember = "true";
    } else {
        remember = "false";
    }

    $.post("./user", {
            program: "login",
            pwd:password,
            email:email,
            code:code
        },
        function (data, status) {
            // alert(data);
            if (data ==="-1"||data===-1) {
                $.jGrowl("账号密码错误，请重新输入", {header: '提醒'});
            } else if (data === "-2"||data===-2) {
                alert("验证码错误");
            } else if (data === "1"||data===1) {
                window.location.assign("./index.jsp")
            }else {alert("出现未知错误")}
        });

}

function checkGender() {
    var email = document.getElementById("useremail_login").value;
    //电子邮件的正则表达式
    var pattern = /^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\!\:\|\\\/\(\)\[\]\{\}]+@[a-zA-Z0-9]+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
    if (!pattern.test(email)) {
        $.jGrowl("邮箱不合法", {header: '提醒'});
        document.getElementById("useremail_login").focus();
        return false;
    }
    return true;
}

