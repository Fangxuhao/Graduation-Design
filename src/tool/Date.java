package tool;

import java.text.SimpleDateFormat;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 17:36
 * @description: 获取日期
 * @version: 1.0$
 */
public class Date {
    public String getDate(){
        Date day = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(df.format(day));
        return df.format(day);
    }
}
