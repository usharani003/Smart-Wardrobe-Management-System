package com.smartwardrobe.controller;

import com.smartwardrobe.util.PasswordUtil;
import com.smartwardrobe.dao.UserDAO;
import com.smartwardrobe.model.User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("fullname");

        String email = request.getParameter("email");

        String password = request.getParameter("password");

        String hashedPassword
                = PasswordUtil.hashPassword(password);

        User user
                = new User(name, email, hashedPassword);

        UserDAO dao = new UserDAO();

        boolean status = dao.registerUser(user);

        if (status) {

            response.sendRedirect("login.jsp");

        } else {

            response.sendRedirect("register.jsp");
        }
    }
}
