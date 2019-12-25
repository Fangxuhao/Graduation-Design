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

// /**
//  * 页面加载完成后
//  */
// window.onload = function () {
//     const nameCookie = getCookie("name");
//     if (nameCookie !== "") {
//         user_area.innerHTML = "<em>您好&nbsp;fxh</em><a href=\"Personal.html\" class=\"gotouser\">进入用户中心</a>\n" +
//             "<a href=\"#\" class=\"logout\" onclick=\"deleteCookie()\">退出</a>"
//     }else {
//         user_area.innerHTML = "<em>欢迎您来到装机大师！</em>\n" +
//             "<a href=\"#\" class=\"register\">免费注册</a>\n" +
//             "<a href=\"#\" class=\"login quick_login\">登录</a>"
//         alert("base");
//     }
// };
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
    
}

