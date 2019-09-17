package DAO.impl;

import DAO.AdminDao;
import domain.Admin;

import java.sql.SQLException;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 15:32
 * @description：  用户DAO
 * @version:  $1.0
 */
public class AdminDAOImpl extends BaseDAO<Admin> implements AdminDao {

    @Override
    public long Register(String name, String pwd, String email) {
            String sql="insert into user values(?,?,?,?,?,?,?)";
        return insert(sql,name,pwd,0,email,null,null,-1);
    }

    @Override
    public Admin LoginByEmailAndPwd(String email, String pwd) {
        String sql ="select * from user where email = ? and pwd = ?";
        return query(sql,email,pwd);
    }
    /**
     * @param email 邮箱
     * @return 邮箱被占用时返回false，邮箱可用是返回true
     */
    @Override
    public boolean IsAvailableByEmail(String email) {
        String  sql="select * from user where email = ?";
        return query(sql, email) == null;
    }
}
