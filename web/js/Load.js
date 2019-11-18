window.onload = function () {
    topdate();
    let xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            const obj = JSON.parse(xmlhttp.responseText);
            document.getElementById("img1").innerHTML += "<img src=\"" + obj[10].src + "\" width=\"235\" height=\"79\">"
            document.getElementById("to_top").innerHTML += "<img src=\"" + obj[11].src + "\" width=\"40\" height=\"40\">"
            document.getElementById("img2").innerHTML += "<img src=\"" + obj[0].src + "\" width=\"1024\" height=\"481\">"
            document.getElementById("img3").innerHTML += "<img src=\"" + obj[0].src + "\" width=\"1024\" height=\"481\">"
            document.getElementById("img4").innerHTML += "<img src=\"" + obj[0].src + "\" width=\"1024\" height=\"481\">"
            document.getElementById("img5").innerHTML += "<img src=\"" + obj[0].src + "\" width=\"1024\" height=\"481\">"
            document.getElementById("img6").innerHTML += "<img src=\"" + obj[12].src + "\" width=\"175\" height=\"205\">"
            document.getElementById("img7").innerHTML += "  <img src=\"" + obj[3].src + "\" width=\"287\" height=\"205\">"
            document.getElementById("img8").innerHTML += "  <img src=\"" + obj[2].src + "\" width=\"188\" height=\"200\">"
            ajax_2(xmlhttp);
        }
    }
    xmlhttp.open("POST", "/indexImg", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send("position=index");

}

function ajax_2(xmlhttp) {

    xmlhttp.onreadystatechange = function () {

        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            const objA = JSON.parse(xmlhttp.responseText);
            let a = 0;
            let b = 0;
            let c = 0;
            for (var i = 0; i < objA.length; i++) {
                if (objA[i].type === "最新资讯") {
                    if (a < 5) {
                        const id = "a-z-" + a;
                        document.getElementById(id).innerText = objA[i].title;
                        document.getElementById(id).href = "read.html?id=" + objA[i].id;
                        a += 1;
                    }
                } else if (objA[i].type === "民俗风情") {
                    if (b < 3) {
                        const id = "a-m-" + b;
                        document.getElementById(id).innerText = objA[i].title;
                        document.getElementById(id).href = "read.html?id=" + objA[i].id;
                        b += 1;
                    }
                } else if (objA[i].type === "文化遗产") {
                    if (c < 5) {
                        const id = "a-w-" + c;
                        document.getElementById(id).innerText = objA[i].title;
                        document.getElementById(id).href = "read.html?id=" + objA[i].id;
                        c += 1;
                    }
                }
            }
        }
    };
    xmlhttp.open("POST", "/getArticle", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send("id=all");

}


function getCookie(cname) {
    const name = cname + "=";
    const ca = document.cookie.split(';');
    for (let i = 0; i < ca.length; i++) {
        const c = ca[i].trim();
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return "";
}

function topdate() {
    const nameCookie = getCookie("name");
    if (nameCookie != "") {
        document.getElementById("top-ul").innerHTML = "<li class=\"top2\" style=\"margin-right: 20%\">\n" +
            "<a href=\"personal.html\" id=\"dl\">个人中心</a>\n" +
            "</li>\n" +
            "<li class=\"top2\">\n" +
            "<a href=\"#\" id=\"dl\">欢迎：" +
            nameCookie +
            "</a>\n" +
            "</li>"
    } else {
        document.getElementById("top-ul").innerHTML = "<li class=\"top2\" style=\"margin-right: 20%\">\n" +
            "<a href=\"login.html\" id=\"dl\">注册</a>\n" +
            " </li>\n" +
            "<li class=\"top2\">\n" +
            "<a href=\"login.html\" id=\"dl\">登录 </a>\n" +
            "</li>"
    }
}

