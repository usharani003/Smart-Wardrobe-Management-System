package com.smartwardrobe.dao;

import com.smartwardrobe.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {

    Connection con;

    // ADMIN LOGIN
    public boolean loginAdmin(
            String username,
            String password){

        boolean status = false;

        try{

            con = DBConnection.getConnection();

            String query =
            "SELECT * FROM admin " +
            "WHERE username=? AND password=?";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ps.setString(1, username);

            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){

                status = true;
            }

        }catch(Exception e){

            e.printStackTrace();
        }

        return status;
    }

    // TOTAL USERS
    public int getTotalUsers(){

        int count = 0;

        try{

            con = DBConnection.getConnection();

            String query =
            "SELECT COUNT(*) FROM users";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){

                count = rs.getInt(1);
            }

        }catch(Exception e){

            e.printStackTrace();
        }

        return count;
    }

    // TOTAL CLOTHES
    public int getTotalClothes(){

        int count = 0;

        try{

            con = DBConnection.getConnection();

            String query =
            "SELECT COUNT(*) FROM wardrobe_items";

            PreparedStatement ps =
                    con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){

                count = rs.getInt(1);
            }

        }catch(Exception e){

            e.printStackTrace();
        }

        return count;
    }
    // CATEGORY REPORT

public int getCategoryCount(
        String category){

    int count = 0;

    try{

        con = DBConnection.getConnection();

        String query =
        "SELECT COUNT(*) " +
        "FROM wardrobe_items " +
        "WHERE category=?";

        PreparedStatement ps =
                con.prepareStatement(query);

        ps.setString(1, category);

        ResultSet rs = ps.executeQuery();

        if(rs.next()){

            count = rs.getInt(1);
        }

    }catch(Exception e){

        e.printStackTrace();
    }

    return count;
}
}