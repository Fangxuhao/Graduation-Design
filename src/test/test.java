package test;

import DAO.impl.AdminDAOImpl;
import domain.Images;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.junit.Test;
import util.DataSourceUtils;

import javax.sql.DataSource;
import java.io.File;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.SQLException;
import java.util.Properties;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 13:43
 * @description： 功能测试类
 * @version: $1.0
 */
public class test {
    public Images imgById(String id) throws SQLException {

        DataSource ds = DataSourceUtils.getDataSource();

        QueryRunner queryRunner = new QueryRunner(ds);

        String sql = "select * from images where id = ?";

        return queryRunner.query(sql, new BeanHandler<>(Images.class), id);
    }

    @Test
    public void test1() throws SQLException {
        long i = new AdminDAOImpl().Register("尼古拉斯", "1", "1");
        System.out.println(i);
    }

    @Test
    public void test2() throws SQLException {

        System.out.println("获取JDK信息");
        System.out.println("Java 运行时环境版本：" + System.getProperty("java.version"));
        System.out.println("Java 运行时环境供应商：" + System.getProperty("java.vendor"));
        System.out.println("Java 供应商的URL：" + System.getProperty("java.vendor.url"));
        System.out.println("Java 安装目录：" + System.getProperty("java.home"));
        System.out.println("Java 虚拟机规范版本：" + System.getProperty("java.vm.specification.version"));
        System.out.println("Java 虚拟机规范供应商：" + System.getProperty("java.vm.specification.vendor"));
        System.out.println("Java 虚拟机规范名称：" + System.getProperty("java.vm.specification.name"));
        System.out.println("Java 虚拟机实现版本：" + System.getProperty("java.vm.version"));
        System.out.println("Java 虚拟机实现供应商：" + System.getProperty("java.vm.vendor"));
        System.out.println("Java 虚拟机实现名称：" + System.getProperty("java.vm.name"));
        System.out.println("Java 运行时环境规范版本：" + System.getProperty("java.specification.version"));
        System.out.println("Java 运行时环境规范供应商：" + System.getProperty("java.specification.vendor"));
        System.out.println("Java 运行时环境规范名称：" + System.getProperty("java.specification.name"));
        System.out.println("Java 类格式版本号：" + System.getProperty("java.class.version"));
        System.out.println("Java 类路径：" + System.getProperty("java.class.path"));
        System.out.println("加载库时搜索的路径列表：" + System.getProperty("java.library.path"));
        System.out.println("默认的临时文件路径：" + System.getProperty("java.io.tmpdir"));
        System.out.println("要使用的 JIT 编译器的名称：" + System.getProperty("java.compiler"));
        System.out.println("一个或多个扩展目录的路径：" + System.getProperty("java.ext.dirs"));

        System.out.println("获取系统信息");
        System.out.println("操作系统的名称：" + System.getProperty("os.name"));
        System.out.println("操作系统的架构：" + System.getProperty("os.arch"));
        System.out.println("操作系统的版本：" + System.getProperty("os.version"));
        System.out.println("文件分隔符（在 UNIX 系统中是“/”：" + System.getProperty("file.separator"));
        System.out.println("路径分隔符（在 UNIX 系统中是“:”）：" + System.getProperty("path.separator"));
        System.out.println("行分隔符（在 UNIX 系统中是“/n”）：" + System.getProperty("line.separator"));
        System.out.println("用户的账户名称：" + System.getProperty("user.name"));
        System.out.println("用户的主目录：" + System.getProperty("user.home"));
        System.out.println("用户的当前工作目录：" + System.getProperty("user.dir"));

    }

    @Test
    public void test_3() {
        //获取所有的属性
        Properties properties = System.getProperties();
        //遍历所有的属性
        for (String key : properties.stringPropertyNames()) {
            //输出对应的键和值
            System.out.println(key + "=" + properties.getProperty(key));
        }
    }

    @Test
    public void test_4() throws SQLException {
        DataSource ds = DataSourceUtils.getDataSource();
        QueryRunner queryRunner = new QueryRunner(ds);


        System.out.println( ds.getConnection().getMetaData().getDriverVersion());
        System.out.println("此数据库中可用的目录名称"+ds.getConnection().getMetaData().getCatalogs());
        System.out.println("此数据库用作类别和表名之间的分隔符 "+ds.getConnection().getMetaData().getCatalogSeparator());
        System.out.println("检索“目录”的数据库供应商的首选项 "+ds.getConnection().getMetaData().getCatalogTerm());
        System.out.println("检索驱动程序支持的客户端信息属性的列表  "+ds.getConnection().getMetaData().getClientInfoProperties());
        System.out.println("检索底层数据库的主版本号 "+ds.getConnection().getMetaData().getDatabaseMajorVersion());
        System.out.println("检索底层数据库的次要版本号 "+ds.getConnection().getMetaData().getDatabaseMinorVersion());
        System.out.println("检索此数据库产品的名称 "+ds.getConnection().getMetaData().getDatabaseProductName());
        System.out.println("检索此数据库产品的版本号 "+ds.getConnection().getMetaData().getDatabaseProductVersion());
        System.out.println("检索此JDBC驱动程序的主要版本号 "+ds.getConnection().getMetaData().getDriverMajorVersion());
        System.out.println("检索此JDBC驱动程序的次要版本号。  "+ds.getConnection().getMetaData().getDriverMinorVersion());
        System.out.println("检索此JDBC驱动程序的名称。  "+ds.getConnection().getMetaData().getDriverName());
        System.out.println("获取此JDBC驱动程序的版本号。  "+ds.getConnection().getMetaData().getDriverVersion());



    } @Test
    public void test_5() {
        File diskPartition = new File("C:");

        long totalCapacity = diskPartition.getTotalSpace();

        long freePartitionSpace = diskPartition.getFreeSpace();
        long usablePatitionSpace = diskPartition.getUsableSpace();

        System.out.println("**** Sizes in Mega Bytes ****\n");

        System.out.println("Total C partition size : " + totalCapacity / (1024*1024) + " MB");
        System.out.println("Usable Space : " + usablePatitionSpace / (1024 *1024) + " MB");
        System.out.println("Free Space : " + freePartitionSpace / (1024 *1024) + " MB");

        System.out.println("\n**** Sizes in Giga Bytes ****\n");

        System.out.println("Total C partition size : " + totalCapacity / (1024*1024*1024) + " GB");
        System.out.println("Usable Space : " + usablePatitionSpace / (1024 *1024*1024) + " GB");
        System.out.println("Free Space : " + freePartitionSpace / (1024 *1024*1024) + " GB");
    }



}
