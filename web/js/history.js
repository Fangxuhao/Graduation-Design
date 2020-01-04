var cookieName = "history";  //cookie名称
var nid;             //文章ID
var N = 10;            //设置cookie保存的浏览记录的条数
//获取最近浏览过的商品
function BindHistory() {
    var historyp = "";
    if ($.cookie(cookieName) != null) //cookie 不存在
    {
        //获取浏览过的商品ID
        historyp = $.cookie(cookieName);
    }
    if (historyp == null && historyp === "") {
        return;
    } else {
        var prdIDs = [];  //将商品ID以列表或数据的方式保存
        var pArray = historyp.split(',');
        for (var i = 0; i < pArray.length; i++) {
            if (pArray[i] !== "") {
                //alert(pArray[i]);

                prdIDs.push(pArray[i]);
            }
        }
        //--->请求商品详细详细...
    }
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
