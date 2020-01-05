$(window).load(function () {
    setBirthdayAndSex();
});




function setBirthdayAndSex() {
    var birthday = $.cookie("birthday");
    var sex = $.cookie("sex");
    var pArray = birthday.split('-');
    var year = pArray[0];
    var mon = pArray[1];
    var day = pArray[2];
    $("#birthdayDay").val(day);
    $("#birthdayMonth").val(mon);
    $("#birthdayYear").val(year);
    if (sex === "保密") {
        $('input:radio[name=sex]')[0].checked = true;
    } else if (sex === "男") {
        $('input:radio[name=sex]')[1].checked = true;
    } else if (sex === "女") {
        $('input:radio[name=sex]')[2].checked = true;
    }
}

function updataUserdata() {
    var checkDay = $("#birthdayDay  option:selected").val();
    var checkMon = $("#birthdayMonth  option:selected").val();
    var checkYear = $("#birthdayYear  option:selected").val();
    var birthday = checkYear + "-" + checkMon + "-" + checkDay;
    let sex = $('input:radio:checked').val();

    alert(birthday);
    $.post("../user", {
            program: "userdata",
            birthday: birthday,
            sex: sex,
            email: $.cookie("email")
        },
        function (data, status) {
            if (data === 1 || data === "1") {
                window.location.href = "user_data.html";
            }
        });
}
function updataUserpwd() {
    var oldpwd= $(" #password ").val();
    var pwd_n= $(" #new_password ").val();
    var pwd_c= $(" #comfirm_password ").val();

  if (oldpwd===""){
      $.jGrowl("请输入原密码！", {header: '提醒'});
  }else if (pwd_n===""){
      $.jGrowl("请输入新密码！", {header: '提醒'});
  }else if (pwd_c===""){
      $.jGrowl("请确认新密码！", {header: '提醒'});
  }else if (pwd_n!==pwd_c){
      $.jGrowl("两次输入新密码不一致！", {header: '提醒'});
  }else{
      $.post("../user", {
              program: "userpwd",
              oldpwd:oldpwd,
              pwd: pwd_n,
              email: $.cookie("email")
          },
          function (data, status) {
              if (data === 1 || data === "1") {
                  alert("修改成功");
                  window.location.href = "user_data.html";
              }else if (data === -1 || data === "-1"){
                  $.jGrowl("原密码错误！", {header: '提醒'});
              }
          });
  }
}
