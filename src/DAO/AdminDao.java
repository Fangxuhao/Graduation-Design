package DAO;

import domain.Admin;

import java.sql.SQLException;

public interface AdminDao {
    /**
     * 注册方法
     */
    long Register(String name, String pwd, String email);

    /**
     * 通过邮箱密码判断是否存在该用户
     */
    Admin LoginByEmailAndPwd(String email, String pwd);

    /**
     * 通过邮箱获取用户信息
     * @param email
     * @return
     */
    Admin getUserDataByEmail(String email);

    /**
     * 判断邮箱是否已经备注
     *
     * @param email 邮箱
     * @return 结果
     */
    boolean IsAvailableByEmail(String email);

    /**
     * 更改用户信息
     * @param birthday
     * @param sex
     */
    void updataUserData(String birthday, String sex,String email);

    void changeUserPWD(String email,String pwd);

}
