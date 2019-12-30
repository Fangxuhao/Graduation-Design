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
    let data=manyValues();
    article_iframe.src="./page/"+data+ ".html";
    if (manyValues()!== null && manyValues() !== "") {
        getArticleById(manyValues());
    }
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
            var obj = $.parseJSON(xmlhttp.responseText);
            if (obj[0].title!==null){
                title_path.innerHTML = obj[0].title;
                type_path.innerHTML = obj[0].type;
            }

        }
    };
    xmlhttp.open("POST", "./article", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send("program=getDataById&id=" + id);

}

/**
 * 获取cookie值
 * @param cname
 * @returns {string}
 */
function getCookie(cname) {
    const name = cname + "=";
    const ca = document.cookie.split(';');
    for (let i = 0; i < ca.length; i++) {
        const c = ca[i].trim();
        if (c.indexOf(name) === 0) return c.substring(name.length, c.length);
    }
    return "";
}

/**
 * 删除所有cookei
 */
function deleteCookie() {
    var cookies = document.cookie.split(";");
    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i];
        var eqPos = cookie.indexOf("=");
        var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
        document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/";
    }
    if (cookies.length > 0) {
        for (var i = 0; i < cookies.length; i++) {
            var cookie = cookies[i];
            var eqPos = cookie.indexOf("=");
            var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
            var domain = location.host.substr(location.host.indexOf('.'));
            document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/; domain=" + domain;
        }
    }
    window.location.href = "index.jsp"
}
//接收多值
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


