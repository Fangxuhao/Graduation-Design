package DAO.impl;

import DAO.Dao;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import util.DataSourceUtils;
import util.ReflectionUtils;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 14:25
 * @description： DAO实现类
 * @version: $1.0
 */
public class BaseDAO<T> implements Dao<T> {
    DataSource ds = DataSourceUtils.getDataSource();
    private QueryRunner queryRunner = new QueryRunner(ds);

    private Class<T> clazz;

    BaseDAO() {
        clazz = ReflectionUtils.getSuperGenericType(getClass());
    }

    /**
     * 执行 INSERT 操作
     *
     * @param sql:  待执行的 SQL 语句
     * @param args: 填充占位符的可变参数
     * @return 返回0则执行成功，返回-1则失败
     */
    @Override
    public long insert(String sql, Object... args) {
        ResultSet resultSet = null;
        try {
            queryRunner.update(sql, args);
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
        return 0;
    }

    @Override
    public void update(String sql, Object... args) {

        try {
            queryRunner.update(sql, args);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public T query(String sql, Object... args) {
        try {
            return queryRunner.query(sql, new BeanHandler<>(clazz), args);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<T> queryForList(String sql, Object... args) {
        try {
            return queryRunner.query(sql, new BeanListHandler<>(clazz), args);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    List<T> queryForList(String sql) {
        try {
            return queryRunner.query(sql, new BeanListHandler<>(clazz));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    /**
     * 执行一个属性或值的查询操作, 例如查询某一条记录的一个字段, 或查询某个统计信息, 返回要查询的值
     *
     * @param sql:  待执行的 SQL 语句
     * @param args: 填充占位符的可变参数
     * @param <V>
     * @return
     */
    @Override
    public <V> V getSingleVal(String sql, Object... args) {

        try {
            return (V) queryRunner.query(sql, new ScalarHandler(), args);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 执行批量更新操作
     *
     * @param sql:  待执行的 SQL 语句
     * @param args: 填充占位符的可变参数
     */
    @Override
    public void batch(String sql, Object[]... args) {
        try {
            queryRunner.batch(sql, args);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
