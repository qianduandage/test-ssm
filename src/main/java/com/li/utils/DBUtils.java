package com.li.utils;

import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class DBUtils {
    // 线程单例
    private static ThreadLocal<Connection> tl = new ThreadLocal<Connection>();
    private static String url;
    private static String driver;
    private static String username;
    private static String password;

    static {
        Properties props = new Properties();
        try {
            // 从属性文件中读取数据库配置信息，以加载类的方式加载配置文件
            props.load(
                    DBUtils.class.getClassLoader()
                            .getResourceAsStream("db_mysql.properties"));

        } catch (IOException e) {
        }
        if (props != null) {
            url = props.getProperty("url");
            driver = props.getProperty("driver");
            username = props.getProperty("username");
            password = props.getProperty("password");

            // 装载并注册数据库驱动
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    public static Connection getConnection() throws SQLException {
        Connection con = tl.get();
        if (con == null) {
            con = DriverManager.getConnection(url, username, password);
            tl.set(con);
        }
        return con;
    }

    public static void closeConnection() {
        Connection con = tl.get();
        try {
            if (con != null) {
                con.close();
                tl.set(null);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void closeStatement(Statement stmt) {
        try {
            if (stmt != null) {
                stmt.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void closeResultSet(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void closeAll(Statement stmt, ResultSet rs){
        closeConnection();
        closeStatement(stmt);
        closeResultSet(rs);
    }

    public static void main(String[] args) throws Exception{
        System.out.println(DBUtils.getConnection());
    }
}
