package util;

import javax.servlet.http.HttpServletRequest;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/10/15 16:06
 * @description： 根据HttpServletRequest请求获取发出请求浏览器客户端所在服务器的IP地址
 * @version: 1.0$
 */
public class IPUtil {
    public String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
}
