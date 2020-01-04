package service;

import DAO.AdminDao;
import DAO.ArticleDao;
import DAO.impl.AdminDAOImpl;
import DAO.impl.ArticleDaoImpl;
import domain.Admin;

/**
 * @author ：方徐浩
 * @date ：Created in 2020/1/3 10:55
 * @description 用户服务
 * @version: 1$
 */
public class AdminService {
    private AdminDao adminDao = new AdminDAOImpl();

    /**
     * 判断邮箱是否已经备注
     *
     * @param email
     * @return
     */
    public boolean IsAvailableByEmail(String email) {
        return adminDao.IsAvailableByEmail(email);
    }

    public void Register(String username, String pwd, String email) {
        adminDao.Register(username, pwd, email);
    }

    public Admin LoginByEmailAndPwd(String email, String pwd) {
        return adminDao.LoginByEmailAndPwd(email, pwd);
    }

    public void updataUserData(String birthday, String sex, String email) {
            adminDao.updataUserData(birthday,sex,email);
    }
}
