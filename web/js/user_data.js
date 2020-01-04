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
    var checkDay = $("#birthdayDay").val();
    var checkMon = $("#birthdayMonth").val();
    var checkYear = $("#birthdayYear").val();
    var brithday = checkYear + "-" + checkMon + "-" + checkDay;
    let sex = $('input:radio:checked').val();


    $.post("../user", {
            program: "userdata",
            brithday: brithday,
            sex: sex,
            email: $.cookie("email")
        },
        function (data, status) {

            window.location.href = "user_data.html";
        });
}
