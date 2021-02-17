package com.li.dao.oldDao.impl;

import com.li.bean.User1;
import com.li.dao.oldDao.UserDao;
import com.li.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao{

    @Override
    public List<User1> getAllUser() {
        List<User1> rsList =new ArrayList<User1>();
        Connection conn ;
        String sql = "select * from user";
        try{
            conn = DBUtils.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int    id = rs.getInt(1);
                String name = rs.getString(2);
                String sex = rs.getString(3);
                int    age = rs.getInt(4);
                String numb = rs.getString(5);
                String brithday = rs.getString(6);
                User1 user = new User1(id,name,sex,age,numb,brithday);

                rsList.add(user);

            }
            DBUtils.closeAll(stmt, rs);
        } catch (SQLException e){
            e.printStackTrace();
        }

        return rsList;
    }

    @Override
    public User1 getUserById(int userId) {
        User1 user1 = new User1();
        Connection conn ;
        String sql = "select * from user where id = ?";
        try{
            conn = DBUtils.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1,userId);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int    id = rs.getInt(1);
                String name = rs.getString(2);
                String sex = rs.getString(3);
                int    age = rs.getInt(4);
                String numb = rs.getString(5);
                String brithday = rs.getString(6);
                user1 = new User1(id,name,sex,age,numb,brithday);

            }
            DBUtils.closeAll(stmt, rs);
        } catch (SQLException e){
            e.printStackTrace();
        }

        return user1;
    }
}
