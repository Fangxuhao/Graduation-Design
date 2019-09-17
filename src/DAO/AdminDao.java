package DAO;

import domain.Admin;

import java.sql.SQLException;

public interface AdminDao {
    /**
     * 注册方法
     */
     long Register(String name, String pwd, String email);
    /**
     *通过邮箱密码判断是否存在该用户
     */
    Admin LoginByEmailAndPwd(String email, String pwd) ;

    /**
     * 判断邮箱是否已经备注
     * @param email 邮箱
     * @return 结果
     */
    boolean IsAvailableByEmail(String email) ;

}