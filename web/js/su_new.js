(function () {
    setTimeout(function () {
        var l = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
        var n = function (p) {
            var d = "";
            var w, u, s, v, t, r, q;
            var o = 0;
            p = e(p);
            while (o < p.length) {
                w = p.charCodeAt(o++);
                u = p.charCodeAt(o++);
                s = p.charCodeAt(o++);
                v = w >> 2;
                t = ((w & 3) << 4) | (u >> 4);
                r = ((u & 15) << 2) | (s >> 6);
                q = s & 63;
                if (isNaN(u)) {
                    r = q = 64
                } else {
                    if (isNaN(s)) {
                        q = 64
                    }
                }
                d = d + l.charAt(v) + l.charAt(t) + l.charAt(r) + l.charAt(q)
            }
            return d
        };
        var e = function (o) {
            o = o.replace(new RegExp("\r\n", "g"), "\n");
            var d = "";
            for (var q = 0; q < o.length; q++) {
                var p = o.charCodeAt(q);
                if (p < 128) {
                    d += String.fromCharCode(p)
                } else {
                    if ((p > 127) && (p < 2048)) {
                        d += String.fromCharCode((p >> 6) | 192);
                        d += String.fromCharCode((p & 63) | 128)
                    } else {
                        d += String.fromCharCode((p >> 12) | 224);
                        d += String.fromCharCode(((p >> 6) & 63) | 128);
                        d += String.fromCharCode((p & 63) | 128)
                    }
                }
            }
            return d
        };

        function i(d) {
            var q = d + "=";
            var p = document.cookie.split(";");
            for (var o = 0; o < p.length; o++) {
                var r = p[o];
                while (r.charAt(0) == " ") {
                    r = r.substring(1, r.length)
                }
                if (r.indexOf(q) == 0) {
                    return r.substring(q.length, r.length)
                }
            }
            return false
        }

        var a = window.navigator.userAgent;
        var j = new Date().getTime();
        var m = document.referrer;
        var h = n(m + "|" + j);
        h = h.replace(new RegExp("=", "g"), "");
        var f = "yjs_id=" + h + ";path=/;expires=" + new Date(j * 10).toUTCString();
        document.cookie = f;
        if (document.getElementById("speedup_test")) {
            if (!navigator.userAgent.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/)) {
                return
            }
            if (i("speedup_test") > 2) {
                return
            }
            document.cookie = ("speedup_test=" + ((+i("speedup_test") || 0) + 1));
            var c = Math.random() * 100;
            h = h + "&speedup_test=" + c.toFixed(0)
        }
        var g = document.createElement("img");
        g.src = "//idm-su.baidu.com/su.png?yjs_id=" + h;
        document.body.appendChild(g);
        g.onload = function () {
            document.body.removeChild(g, true)
        };
        var k = new Date().getTime();
        var b = new Date(k + 24 * 3600 * 1000).toUTCString();
        document.cookie = "ctrl_time=1;path=/;expires=" + b
    }, 0)
})();