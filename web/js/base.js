function changeImg() {
    var imgSrc = $("#code_img");
    var src = imgSrc.attr("src");
    imgSrc.attr("src", chgUrl(src));
}

function chgUrl(url) {
    var timestamp = (new Date()).valueOf();
    url = url.substring(0, 20);
    if ((url.indexOf("&") >= 0)) {
        url = url + "×tamp=" + timestamp;
    } else {
        url = url + "?timestamp=" + timestamp;
    }
    return url;
}


function pageTop() {
    const nameCookie = getCookie("name");

    if (nameCookie !== "") {
        user_area.innerHTML = "<em>您好&nbsp;" +
            getCookie("name") +
            "</em><a href=\"Personal.html\" class=\"gotouser\">进入用户中心</a>\n" +
            "<a href=\"#\" type=\"button\"  class=\"logout\" onclick=\"deleteCookie()\">退出</a>"
    } else {
        user_area.innerHTML = "<em>欢迎您来到装鸡大湿！</em>\n" +
            "<a href=\"register.html\" class=\"register\">免费注册</a>\n" +
            "<a href=\"login.html\" class=\"login quick_login\">登录</a>"
    }
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
    $.removeCookie('name');
    $.removeCookie('email');
    window.location.href = "index.jsp"
}



/**
 * 接收上一个页面传递的信息
 */
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


function search() {
    var data = document.getElementsByName("keywords").values().toString();
    // alert(data);
    if (data !== null && data !== "") {


        var condition="./search.html?key=" + data;
        window.location.href = condition;
        // $(location).attr('href',href);
    }
}

