package com.smartwardrobe.controller;

import com.smartwardrobe.dao.AdminDAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLogin")

public class AdminLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username =
                request.getParameter("username");

        String password =
                request.getParameter("password");

        AdminDAO dao =
                new AdminDAO();

        boolean status =
        dao.loginAdmin(username,password);

        if(status){

            HttpSession session =
                    request.getSession();

            session.setAttribute(
                    "admin",
                    username);

            response.sendRedirect(
                    "admin-dashboard.jsp");

        }else{

            response.sendRedirect(
                    "admin-login.jsp");
        }
    }
}