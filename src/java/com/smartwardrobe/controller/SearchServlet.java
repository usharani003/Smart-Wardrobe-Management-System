package com.smartwardrobe.controller;

import com.smartwardrobe.dao.WardrobeDAO;
import com.smartwardrobe.model.User;
import com.smartwardrobe.model.WardrobeItem;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/searchClothes")

public class SearchServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session =
                request.getSession();

        User user =
        (User)session.getAttribute("user");

        String keyword =
                request.getParameter("keyword");

        String category =
                request.getParameter("category");

        WardrobeDAO dao =
                new WardrobeDAO();

        ArrayList<WardrobeItem> list =
        dao.searchItems(
                user.getUserId(),
                keyword,
                category
        );

        request.setAttribute("items", list);

        request.getRequestDispatcher(
                "search-results.jsp")
                .forward(request, response);
    }
}