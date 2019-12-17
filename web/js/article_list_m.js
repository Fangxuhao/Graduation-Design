//类型
const type = document.getElementById("type");
//更多链接
const more = document.getElementById("more");

const all = document.getElementById("all");

/**
 * 页面加载完成后
 */
window.onload = function () {
    let a = manyValues();
    if (a==="CPU"){
        type.innerHTML = "CPU";
    }else if (a==="MainBoard"){
        type.innerHTML = "主板";
    }else if (a==="GPU"){
        type.innerHTML = "显卡";
    }else if (a==="MemoryAndHardDisk"){
        type.innerHTML = "内存硬盘";
    }else if (a==="Other"){
        type.innerHTML = "机箱电源其他";
    }else if (a==="Monitor"){
        type.innerHTML = "显示器";
    }
    type.href = a + ".html";
    more.href = a + ".html";
    let xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            const obj = JSON.parse(xmlhttp.responseText);
            let href = "page/" + obj[0].id + ".html";
            all.innerHTML += "<div class=\"item first\">" +
                "<a href=\"" + href + "\" class=\"image\">" +
                "<img src=\"pageImg/" + obj[0].imgSrc + "\">" +
                "</a>" +
                "<h3>" + "<span class=\"badge\"></span>" +
                "<a href=\"" + href + "\" target=\"_blank\">" + obj[0].title + "</a>" +
                "</h3>" +
                "<span class=\"time\">" + obj[0].date + "</span>" +
                "</div>";
            for (var i = 1; i < obj.length; i++) {
                href="page/" + obj[i].id + ".html";
                all.innerHTML += "<div class=\"item\">" +
                    "<h3>" + "<span class=\"badge\"></span>" +
                    "<a href=\"" + href + "\" target=\"_blank\">" + obj[i].title + "</a>" +
                    "</h3>" +
                    "<span class=\"time\">" + obj[0].date+ "</span>" +
                    "</div>";
            }
        }
    };
    xmlhttp.open("POST", "/ZhuangJiDaShi_war_exploded/article", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send("program=IAL_5&type="+a);
};

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
