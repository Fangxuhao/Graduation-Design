package test;

import DAO.impl.AdminDAOImpl;
import domain.Images;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.junit.Test;
import util.DataSourceUtils;
import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 13:43
 * @description： 功能测试类
 * @version: $1.0
 */
public class test {
    public Images imgById(String id) throws SQLException {

        DataSource ds= DataSourceUtils.getDataSource();

        QueryRunner queryRunner = new QueryRunner(ds);

        String  sql="select * from images where id = ?";

        return queryRunner.query(sql, new BeanHandler<>(Images.class), id);
    }
@Test
    public void test1() throws SQLException {
        long i=new AdminDAOImpl().Register("尼古拉斯","1","1");
        System.out.println(i);
    }


}
