package com.smartwardrobe.controller;

import java.io.File;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import com.smartwardrobe.dao.WardrobeDAO;
import com.smartwardrobe.model.User;
import com.smartwardrobe.model.WardrobeItem;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfig
@WebServlet("/addClothes")

public class AddClothesServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session
                = request.getSession();

        User user
                = (User) session.getAttribute("user");

        String itemName
                = request.getParameter("itemName");

        String category
                = request.getParameter("category");

        String color
                = request.getParameter("color");

        String occasion
                = request.getParameter("occasion");
        String fileName = "";

        Part filePart = request.getPart("image");

        if (filePart != null && filePart.getSize() > 0) {

            fileName
                    = System.currentTimeMillis()
                    + "_"
                    + filePart.getSubmittedFileName();

            String uploadPath
                    = getServletContext()
                    .getRealPath("/assets/images/uploads");

            File uploadDir
                    = new File(uploadPath);

            if (!uploadDir.exists()) {

                uploadDir.mkdirs();
            }

            String fullPath
                    = uploadPath
                    + File.separator
                    + fileName;

            filePart.write(fullPath);
        }
        WardrobeItem item
                = new WardrobeItem();

        item.setUserId(user.getUserId());

        item.setItemName(itemName);

        item.setCategory(category);

        item.setColor(color);

        item.setOccasion(occasion);

        item.setImagePath(
                "assets/images/uploads/" + fileName);
        WardrobeDAO dao
                = new WardrobeDAO();

        dao.addItem(item);

        response.sendRedirect("view-clothes.jsp");
    }
}
