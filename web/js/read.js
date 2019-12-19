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
//用户栏信息
const user_area = document.getElementById("user_area");
//文章窗口
const article_iframe = document.getElementById("article_iframe");


/**
 * 页面加载完成后
 */
window.onload = function () {
    const nameCookie = getCookie("name");
    if (nameCookie !== "") {
        user_area.innerHTML = "<em>您好&nbsp;" +
            nameCookie +
            "</em><a href=\"Personal.html\" class=\"gotouser\">进入用户中心</a>\n" +
            "<a href=\"#\" class=\"logout\" onclick=\"deleteCookie()\">退出</a>"
    } else {
        user_area.innerHTML = "<em>欢迎您来到装机大师！</em>\n" +
            "<a href=\"register.html\" class=\"register\">免费注册</a>\n" +
            "<a href=\"login.html\" class=\"login quick_login\">登录</a>"
    }
    article_iframe.src="page/" +
        manyValues()+
        ".html";
    if (manyValues()!== null && manyValues() !== "") {
        alert(article_iframe.src);
        getArticleById(manyValues());
    }
};


/**
 * 通过id获取文章信息
 */
function getArticleById(id) {
    alert(111);
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
            date.innerHTML = obj[0].date;
            times.innerHTML = obj[0].times;
            author.innerHTML = obj[0].author;
            article_content.innerHTML = obj[0].content;
            liked.innerHTML = obj[0].liked;
        }
    };
    xmlhttp.open("POST", "./getArticle", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send("program=getDataById&id=" + id);

}





