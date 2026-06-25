package com.smartwardrobe.dao;

import com.smartwardrobe.util.PasswordUtil;
import com.smartwardrobe.model.User;
import com.smartwardrobe.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    Connection con;

    // REGISTER USER
    public boolean registerUser(User user) {

        boolean status = false;

        try {

            con = DBConnection.getConnection();

            String query = "INSERT INTO users(full_name,email,password) VALUES(?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, user.getFullName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());

            int row = ps.executeUpdate();

            if (row > 0) {

                status = true;
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return status;
    }

    // LOGIN USER
    public User loginUser(String email, String password) {

        User user = null;

        try {

            con = DBConnection.getConnection();

            String query = "SELECT * FROM users WHERE email=? AND password=?";

            PreparedStatement ps = con.prepareStatement(query);

            String hashedPassword
                    = PasswordUtil.hashPassword(password);

            ps.setString(1, email);
            ps.setString(2, hashedPassword);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                user = new User();

                user.setUserId(rs.getInt("user_id"));
                user.setFullName(rs.getString("full_name"));
                user.setEmail(rs.getString("email"));
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return user;
    }
}
