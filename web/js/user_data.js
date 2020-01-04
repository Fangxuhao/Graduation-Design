$(window).load(function () {
    setBirthday();
});

function setBirthday() {
    var birthday = $.cookie("birthday");
    var pArray = birthday.split('-');
    var year = pArray[0];
    var mon = pArray[1];
    var day = pArray[2];

    $("#birthdayDay").val(day);
    $("#birthdayMonth").val(mon);
    $("#birthdayYear").val(year);
}

function updataUserdata() {
    var checkDay = $("#birthdayDay").val();
    var checkMon = $("#birthdayMonth").val();
    var checkYear = $("#birthdayYear").val();
    var brithday = checkYear + "-" + checkMon + "-" + checkDay;
    let sex = $('input:radio:checked').val();


    $.post("./user", {
            program: "userdata",
            brithday: brithday,
            sex: sex,
            email: $.cookie("email")
        },
        function (data, status) {

            window.location.href = "user_data.html";
        });
}
