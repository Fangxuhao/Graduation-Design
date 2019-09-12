package tool;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 13:40
 * @description： MD5加密文件
 * @version: 1.0$
 */
public class MD5 {
    public String md5(String s){
        try {
            MessageDigest md =MessageDigest.getInstance("MD5");
            md.update(s.getBytes());
            byte b[]=md.digest();
            int i;
            StringBuffer buffer=new StringBuffer("");

            for (int offset=0;offset<b.length;offset++){
                i=b[offset];
                if (i<0)
                    i+=256;
                if (i<16)
                    buffer.append("0");

                buffer.append(Integer.toHexString(i));
            }

            s=buffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return s;
    }
}
