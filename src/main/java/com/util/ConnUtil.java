package com.util;

import java.math.BigDecimal;
import java.sql.*;

public class ConnUtil {
    private static final String driver = "com.mysql.cj.jdbc.Driver";// 数据库驱动
    private static final String url = "jdbc:mysql://localhost:3306/empinfor?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT";   //"login"是指你的数据库名称 3306是端口
    private static final String username = "root";         //  数据库用户名
    private static final String password = "12345";

    public static Connection getConn()  {
        Connection conn = null ;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn ;
    }
}
