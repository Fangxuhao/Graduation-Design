package util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 9:43
 * @description： date source工具类
 * @version: 1.0$
 */
public class DataSourceUtils {
    private  static ComboPooledDataSource dataSource=new ComboPooledDataSource("mysql");

    /**
     * 获取数据源
     * @return 连接池
     */
    public static DataSource getDataSource() {
        return dataSource;
    }

    /**
     * 获取连接
     * @return 链接
     * @throws SQLException
     */
    public Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    /**
     * @param connection 连接
     * @param statement 语句执行者
     * @param resultSet 结果集
     * @throws SQLException
     */
    public void closeResource(Connection connection, Statement statement, ResultSet resultSet) throws SQLException {
        closeResult(resultSet);
        closeStatement(statement);
        closeConnection(connection);
    }

    private void closeConnection(Connection connection) throws SQLException {
        connection.close();
    }

    private void closeStatement(Statement statement) throws SQLException {
        statement.close();
    }

    private void closeResult(ResultSet resultSet) throws SQLException {
    resultSet.close();
    }

}
