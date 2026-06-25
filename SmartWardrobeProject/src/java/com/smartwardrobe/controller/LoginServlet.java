package com.smartwardrobe.controller;

import com.smartwardrobe.dao.UserDAO;
import com.smartwardrobe.model.User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");

        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();

        User user = dao.loginUser(email, password);

        if(user != null){

            HttpSession session = request.getSession();

            session.setAttribute("user", user);

            response.sendRedirect("dashboard.jsp");

        } else {

            response.sendRedirect("login.jsp");
        }
    }
}