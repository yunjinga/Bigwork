package com.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
    //MVC模式（非23种设计模式之一）
    // m model 模型
    // entity pojo 实体类  这一层编写的是与数据库的表一一对应的java类
    // dao层 database access object 就是负责数据库增删改查的接口
    // service层 是真正的业务逻辑层  调用dao层  来具体使用dao层
    // v view 视图 jsp 显示数据的，给用户看的
    // c controller 控制器 --> servlet
    public int modifyData(String sql,Object []obj){
        Connection conn = ConnUtil.getConn() ;
        int result = 0 ;
        if(conn==null){
            System.out.println("conn is null");
        }else{
            try {
                PreparedStatement ps = conn.prepareStatement(sql) ;
                for(int i = 0 ; i < obj.length; i ++){
                    ps.setObject(i+1,obj[i]);
                }
                result = ps.executeUpdate() ;

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    return result ;
    }


    public ResultSet getDataByAny(String sql,Object[] obj){
//        return null ;
        Connection conn = ConnUtil.getConn() ;
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement(sql) ;
            for(int i = 0 ; i < obj.length; i ++){
                ps.setObject(i+1,obj[i]);
            }
            rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs ;
    }
}
