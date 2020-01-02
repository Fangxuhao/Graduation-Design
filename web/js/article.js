//文章标题
const title = document.getElementById("title");
//文章发表时间
const date = document.getElementById("date");
//文章浏览次数
const times = document.getElementById("times");
//文章作者
const author = document.getElementById("author");
//文章具体内容
const article_content = document.getElementById("article_content");
//文章获赞数
const liked = document.getElementById("liked");

const likedA = document.getElementById("likedA");

/**
 * 页面加载完成后
 */
window.onload = function () {
    let id = pageName();
    getArticleById(id);
};

/**
 * 通过id获取文章信息
 */
function getArticleById(id) {
    let xmlhttp;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            const obj = JSON.parse(xmlhttp.responseText);
            title.innerHTML = obj[0].title;
            date.innerHTML = "发表时间：" + obj[0].date;
            times.innerHTML = "文章浏览次数：" + obj[0].times;
            author.innerHTML = "作者：" + obj[0].author;
            liked.innerHTML = "(" + obj[0].liked + ")";
            liked.onclick = "likedP(" + id + ")";
        }
    };
    xmlhttp.open("POST", "../article", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send("program=getDataById&id=" + id);
    addTimes(id);
}

function addTimes(id) {
    $.post("../article", {
            program: "addTimes",
            id: id
        },
        function (data, status) {
        });
}

function likedP(id) {
    $.post("../article", {
            program: "liked",
            id: id
        },
        function (data, status) {

        });
    var num = $("#liked").text();
    num = num.replace("(", "");
    num = num.replace(")", "");
    num=parseInt(num)+1;
    liked.innerHTML = "(" + num + ")";
}

function pageName() {
    var a = location.href;
    var b = a.split("/");
    var c = b.slice(b.length - 1, b.length).toString(String).split(".");
    return c.slice(0, 1);
}


