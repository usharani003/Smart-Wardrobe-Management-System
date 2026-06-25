package com.smartwardrobe.controller;

import com.smartwardrobe.dao.WardrobeDAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteClothes")

public class DeleteClothesServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int itemId =
        Integer.parseInt(
                request.getParameter("id"));

        WardrobeDAO dao =
                new WardrobeDAO();

        dao.deleteItem(itemId);

        response.sendRedirect("view-clothes.jsp");
    }
}