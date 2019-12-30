const all = document.getElementById("all");

/**
 * 页面加载完成后
 */
window.onload = function () {
    let a = manyValues();
    getDataByType(a)
};

function getDataByType(type) {
    $.post("./article", {
            program: "AL",
            type: type
        },
        function (data, status) {
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
                    "<a href=\""+href+"\" class=\"image\"><img src=\"pageImg/" + obj[i].imgSrc + "\"></a>" +
                    "<h3><span class=\"badge \">"+i+"</span><a href=\""+href+"\">"+ obj[i].title +"</a></h3>" +
                    "<p class=\"content\">"+ obj[i].content+"</p>" +
                    "<p class=\"info\">" +
                    "<span class=\"time\">最近更新时间：" + obj[i].date + "</span>" +
                    "&nbsp;<span class=\"author\" >&nbsp;浏览量：" +
                    obj[i].times +
                    "&nbsp;作者：" +
                    obj[i].author +
                    "</span></p>" +
                    "</div>";
            }

        });
}

function manyValues() {
    var url = window.location.search;
    let strs;
    if (url.indexOf("?") !== -1) {
        var str = url.substr(1);
        strs = str.split("&");
        var key = new Array(strs.length);
        var value = new Array(strs.length);
        for (let i = 0; i < strs.length; i++) {
            key[i] = strs[i].split("=")[0];
            value[i] = unescape(strs[i].split("=")[1]);
            // alert(key[i]+"="+value[i]);
        }
        return value[0];
    }
    return null;
}
