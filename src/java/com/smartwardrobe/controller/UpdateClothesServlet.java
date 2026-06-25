package com.smartwardrobe.controller;

import com.smartwardrobe.dao.WardrobeDAO;
import com.smartwardrobe.model.WardrobeItem;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateClothes")

public class UpdateClothesServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int itemId =
        Integer.parseInt(
                request.getParameter("itemId"));

        String itemName =
                request.getParameter("itemName");

        String category =
                request.getParameter("category");

        String color =
                request.getParameter("color");

        String occasion =
                request.getParameter("occasion");

        WardrobeItem item =
                new WardrobeItem();

        item.setItemId(itemId);

        item.setItemName(itemName);

        item.setCategory(category);

        item.setColor(color);

        item.setOccasion(occasion);

        WardrobeDAO dao =
                new WardrobeDAO();

        dao.updateItem(item);

        response.sendRedirect(
                "view-clothes.jsp");
    }
}