function test() {
    $.jGrowl("用户名不能为空！", {header: '提醒'});
}

const list = document.getElementById("comments_list");
let id=manyValues();
window.onload = function () {
    let xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            const obj = JSON.parse(xmlhttp.responseText);
            for (var i = 0; i < objA.length; i++) {
                list.innerHTML +="<li class=\"status1\">" +
                    "<div class=\"info\">" +
                    "<span class=\"name\">" +
                    obj[i].user +
                    "</span>" +
                    "<span class=\"time\">" +
                    obj[i].date +
                    "</span>" +
                    "</div>" +
                    "<div class=\"talk\">" +
                    "<p class=\"text\">" +
                    obj[i].content+
                    "</p>" +
                    "<blockquote class=\"reply\"><span class=\"name\">站长回复：</span>" +
                    "<p>" +
                    obj[i].reply+
                    "</p></blockquote>" +
                    "</div>" +
                    "</li>";
            }
        }
    };
    xmlhttp.open("POST", "/getArticleReview", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send("id="+id);
};