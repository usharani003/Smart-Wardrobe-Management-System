package com.smartwardrobe.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/recommendation")

public class RecommendationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String weather
                = request.getParameter("weather");

        String occasion
                = request.getParameter("occasion");

        String mood
                = request.getParameter("mood");

        String color
                = request.getParameter("color");

        String recommendation = "";
        String image = "";

        if (weather.equalsIgnoreCase("Cold")
                && occasion.equalsIgnoreCase("Wedding")) {

            recommendation
                    = color + " traditional wedding outfit with warm layering.";

            image
                    = "assets/images/clothes/traditional_wear.jpg";

        } else if (weather.equalsIgnoreCase("Rainy")
                && occasion.equalsIgnoreCase("Office")) {

            recommendation
                    = color + " formal office outfit with weather protection.";

            image
                    = "assets/images/clothes/blazer.jpg";

        } else if (weather.equalsIgnoreCase("Sunny")
                && occasion.equalsIgnoreCase("College")) {

            recommendation
                    = color + " lightweight college outfit.";

            image
                    = "assets/images/clothes/tshirt.jpg";

        } else if (weather.equalsIgnoreCase("Hot")
                && occasion.equalsIgnoreCase("Travel")) {

            recommendation
                    = color + " breathable travel outfit.";

            image
                    = "assets/images/clothes/travel_jacket.jpg";

        } else if (mood.equalsIgnoreCase("Workout")) {

            recommendation
                    = color + " sportswear outfit for active workouts.";

            image
                    = "assets/images/clothes/sportswear.jpg";

        } else if (mood.equalsIgnoreCase("Romantic")) {

            recommendation
                    = color + " elegant outfit suitable for romantic occasions.";

            image
                    = "assets/images/clothes/dress.jpg";

        } else if (mood.equalsIgnoreCase("Focus")) {

            recommendation
                    = color + " professional outfit for focused work.";

            image
                    = "assets/images/clothes/formal_shirt.jpg";

        } else if (occasion.equalsIgnoreCase("Wedding")) {

            recommendation
                    = color + " traditional wedding attire.";

            image
                    = "assets/images/clothes/saree.jpg";

        } else if (occasion.equalsIgnoreCase("Party")) {

            recommendation
                    = color + " stylish party wear outfit.";

            image
                    = "assets/images/clothes/partywear.jpg";

        } else if (occasion.equalsIgnoreCase("Office")) {

            recommendation
                    = color + " formal office outfit.";

            image
                    = "assets/images/clothes/blazer.jpg";

        } else if (weather.equalsIgnoreCase("Rainy")) {

            recommendation
                    = color + " waterproof casual outfit.";

            image
                    = "assets/images/clothes/jacket.jpg";

        } else if (weather.equalsIgnoreCase("Cold")) {

            recommendation
                    = color + " warm hoodie and layered clothing.";

            image
                    = "assets/images/clothes/hoodie.jpg";

        } else if (weather.equalsIgnoreCase("Cloudy")) {
            recommendation
                    = color + " smart layered outfit for cloudy weather.";

            image
                    = "assets/images/clothes/hoodie.jpg";
        } else if (mood.equalsIgnoreCase("Calm")) {
            recommendation
                    = color + " relaxed casual outfit.";

            image
                    = "assets/images/clothes/hoodie.jpg";
        } else if (mood.equalsIgnoreCase("Energetic")) {
            recommendation
                    = color + " trendy active outfit.";

            image
                    = "assets/images/clothes/sportswear.jpg";
        } else {

            recommendation
                    = color + " comfortable casual outfit.";

            image
                    = "assets/images/clothes/tshirt.jpg";

        }
        request.setAttribute(
                "recommendation",
                recommendation);

        request.setAttribute(
                "image",
                image);
        request.setAttribute(
                "weather",
                weather);

        request.setAttribute(
                "occasion",
                occasion);

        request.setAttribute(
                "mood",
                mood);

        request.setAttribute(
                "color",
                color);

        request.getRequestDispatcher(
                "recommendation-result.jsp")
                .forward(request, response);
    }
}
