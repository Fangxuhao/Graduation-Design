package tool;

import net.sf.json.JSONArray;

import java.util.List;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/16 17:25
 * @description： 将数据转换为JSON数据
 * @version: 1.0$
 */
public class GetJsonData<T>{
    public  String  getJson(List<T> list){
            return JSONArray.fromObject(list).toString();
    }
}
