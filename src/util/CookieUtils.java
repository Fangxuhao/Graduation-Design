package util;

import javax.servlet.http.Cookie;

/**
 * @author ：方徐浩
 * @date ：Created in 2020/1/4 10:07
 * @description：通过cookie的名称获取指定的cookie
 * @version: $1
 */
public class CookieUtils {
    public static Cookie getCookieByName(String name, Cookie[] cookies) {
        if(cookies!=null){

            for (Cookie c : cookies) {
                if(name.equals(c.getName()))
                    return c;
            }
        }
        return null;
    }
}
