package com.smartwardrobe.dao;

import com.smartwardrobe.model.WardrobeItem;
import com.smartwardrobe.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class WardrobeDAO {

    Connection con;

    // ADD CLOTHES
    public boolean addItem(WardrobeItem item) {

        boolean status = false;

        try {

            con = DBConnection.getConnection();

            String query
                    = "INSERT INTO wardrobe_items\n"
                    + "(item_name,category,color,\n"
                    + "occasion,user_id,image_path)\n"
                    + "VALUES(?,?,?,?,?,?)";

            PreparedStatement ps
                    = con.prepareStatement(query);

            ps.setString(1, item.getItemName());

            ps.setString(2, item.getCategory());

            ps.setString(3, item.getColor());

            ps.setString(4, item.getOccasion());

            ps.setInt(5, item.getUserId());

            ps.setString(6, item.getImagePath());

            int row = ps.executeUpdate();

            if (row > 0) {

                status = true;
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return status;
    }

    // VIEW ITEMS
    public ArrayList<WardrobeItem> getItemsByUser(int userId) {

        ArrayList<WardrobeItem> list
                = new ArrayList<>();

        try {

            con = DBConnection.getConnection();

            String query
                    = "SELECT * FROM wardrobe_items WHERE user_id=?";

            PreparedStatement ps
                    = con.prepareStatement(query);

            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                WardrobeItem item
                        = new WardrobeItem();

                item.setItemId(
                        rs.getInt("item_id"));

                item.setItemName(
                        rs.getString("item_name"));

                item.setCategory(
                        rs.getString("category"));

                item.setColor(
                        rs.getString("color"));

                item.setOccasion(
                        rs.getString("occasion"));
                item.setImagePath(
                        rs.getString("image_path"));
                list.add(item);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }

    // DELETE ITEM
    public boolean deleteItem(int itemId) {

        boolean status = false;

        try {

            con = DBConnection.getConnection();

            String query
                    = "DELETE FROM wardrobe_items WHERE item_id=?";

            PreparedStatement ps
                    = con.prepareStatement(query);

            ps.setInt(1, itemId);

            int row = ps.executeUpdate();

            if (row > 0) {

                status = true;
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return status;
    }
    // SEARCH AND FILTER ITEMS

    public ArrayList<WardrobeItem> searchItems(
            int userId,
            String keyword,
            String category) {

        ArrayList<WardrobeItem> list
                = new ArrayList<>();

        try {

            con = DBConnection.getConnection();

            String query
                    = "SELECT * FROM wardrobe_items "
                    + "WHERE user_id=? "
                    + "AND item_name LIKE ? "
                    + "AND category LIKE ?";

            PreparedStatement ps
                    = con.prepareStatement(query);

            ps.setInt(1, userId);

            ps.setString(2, "%" + keyword + "%");

            ps.setString(3, "%" + category + "%");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                WardrobeItem item
                        = new WardrobeItem();

                item.setItemId(
                        rs.getInt("item_id"));

                item.setItemName(
                        rs.getString("item_name"));

                item.setCategory(
                        rs.getString("category"));

                item.setColor(
                        rs.getString("color"));

                item.setOccasion(
                        rs.getString("occasion"));
                item.setImagePath(
                        rs.getString("image_path"));
                list.add(item);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }
    // GET SINGLE ITEM

    public WardrobeItem getItemById(int itemId) {

        WardrobeItem item
                = new WardrobeItem();

        try {

            con = DBConnection.getConnection();

            String query
                    = "SELECT * FROM wardrobe_items WHERE item_id=?";

            PreparedStatement ps
                    = con.prepareStatement(query);

            ps.setInt(1, itemId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                item.setItemId(
                        rs.getInt("item_id"));

                item.setItemName(
                        rs.getString("item_name"));

                item.setCategory(
                        rs.getString("category"));

                item.setColor(
                        rs.getString("color"));

                item.setOccasion(
                        rs.getString("occasion"));
                item.setImagePath(
                        rs.getString("image_path"));
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return item;
    }
    // UPDATE ITEM

    public boolean updateItem(
            WardrobeItem item) {

        boolean status = false;

        try {

            con = DBConnection.getConnection();

            String query
                    = "UPDATE wardrobe_items "
                    + "SET item_name=?, "
                    + "category=?, "
                    + "color=?, "
                    + "occasion=? "
                    + "WHERE item_id=?";

            PreparedStatement ps
                    = con.prepareStatement(query);

            ps.setString(1,
                    item.getItemName());

            ps.setString(2,
                    item.getCategory());

            ps.setString(3,
                    item.getColor());

            ps.setString(4,
                    item.getOccasion());

            ps.setInt(5,
                    item.getItemId());

            int row
                    = ps.executeUpdate();

            if (row > 0) {

                status = true;
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return status;
    }
}
