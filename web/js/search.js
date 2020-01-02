const all = document.getElementById("all");
const keydata = document.getElementById("keydata");
$(function () {
    pageTop();
    keydata.innerHTML = "“" + manyValues() + "”";
    getDataBySearch(manyValues());
});

function pageTop() {
    const nameCookie = getCookie("name");
    if (nameCookie !== "") {
        user_area.innerHTML = "<em>您好&nbsp;fxh</em><a href=\"Personal.html\" class=\"gotouser\">进入用户中心</a>\n" +
            "<a href=\"#\" class=\"logout\" onclick=\"deleteCookie()\">退出</a>"
    }else {
        user_area.innerHTML = "<em>欢迎您来到装机大师！</em>\n" +
            "<a href=\"register.html\" class=\"register\">免费注册</a>\n" +
            "<a href=\"login.html\" class=\"login quick_login\">登录</a>"
    }
}

function getDataBySearch(key) {
    $.post("./article", {
            program: "Search",
            key: key
        },
        function (data, status) {
            if (data !== "[]") {
                var obj = $.parseJSON(data);
                let href = "read.html?id=" + obj[0].id;
                all.innerHTML += "<div class=\"item first\">" +
                    "<a href=\"" + href + "\" class=\"image\"><img src=\"pageImg/" + obj[0].imgSrc + "\" ></a>" +
                    "<h3>" +
                    "<span class=\"badge badge_1\">1</span>" +
                    "<a href=\"" + href + "\">" + obj[0].title + "</a>" +
                    "</h3>" +
                    "<p class=\"content\">" + obj[0].content + "</p>" +
                    "<p class=\"info\">" +
                    "<span class=\"time\">最近更新时间：" + obj[0].date + "</span>" +
                    "&nbsp;<span class=\"author\" >&nbsp;浏览量：" +
                    obj[0].times +
                    "&nbsp;作者：" +
                    obj[0].author +
                    "</span></p>" +
                    "</div>";

                for (var i = 1; i < obj.length; i++) {
                    href = "read.html?id=" + obj[i].id;
                    all.innerHTML += "<div class=\"item\">" +
                        "<a href=\"" + href + "\" class=\"image\"><img src=\"pageImg/" + obj[i].imgSrc + "\"></a>" +
                        "<h3><span class=\"badge \">" + i + "</span><a href=\"" + href + "\">" + obj[i].title + "</a></h3>" +
                        "<p class=\"content\">" + obj[i].content + "</p>" +
                        "<p class=\"info\">" +
                        "<span class=\"time\">最近更新时间：" + obj[i].date + "</span>" +
                        "&nbsp;<span class=\"author\" >&nbsp;浏览量：" +
                        obj[i].times +
                        "&nbsp;作者：" +
                        obj[i].author +
                        "</span></p>" +
                        "</div>";
                }
            } else {
                all.innerHTML = "<h1 style=\"padding: 15px\">很抱歉，没有找到与“<span style=\"color: #ff232b;\">" +
                    manyValues() +
                    "</span>”相关的内容。</h1>\n"
            }
        });
}
