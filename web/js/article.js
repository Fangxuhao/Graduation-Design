//路径类型
const type_path = document.getElementById("type_path");
//路径标题
const title_path = document.getElementById("title_path");
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


/**
 * 页面加载完成后
 */
window.onload = function () {

    getArticleById(manyValues());
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
            title_path.innerHTML = obj[0].title;
            type_path.innerHTML = obj[0].type;
            date.innerHTML = "发表时间："+obj[0].date;
            times.innerHTML ="文章浏览次数："+ obj[0].times;
            author.innerHTML ="作者："+ obj[0].author;
            article_content.innerHTML = obj[0].content;
            liked.innerHTML ="("+ obj[0].liked+")";
        }
    };
    xmlhttp.open("POST", "/article", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send("id=" + id+"&"+"times=1");
}


