<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.smartwardrobe.model.User" %>

<%

    User user = (User) session.getAttribute("user");

    if (user == null) {

        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>

    <head>

        <title>Dashboard</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
              rel="stylesheet">
        <link rel="stylesheet"
              href="css/style.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>

    <body class="dashboard-bg">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <div class="container-fluid">

                <a class="navbar-brand">

                    <i class="fa-solid fa-shirt"></i>

                    Smart Wardrobe

                </a>

                <a href="logout"
                   class="btn btn-danger">

                    Logout

                </a>

            </div>


        </nav>

        <div class="hero-section" style="height:140px;">

            <div class="hero-overlay" style="padding:5px 0;">

                <div class="hero-text" style="padding-top:10px; padding-bottom:10px;">

                    <h1 style="margin-bottom:0;">
                        Welcome, <%= user.getFullName().substring(0,1).toUpperCase()+ user.getFullName().substring(1).toLowerCase()%>
                    </h1>

                    <p style="margin-top:5px;margin-bottom:0;">
                        Manage your wardrobe effortlessly
                    </p>

                </div>

            </div>

        </div>
        <div class="container mb-5">

           <div class="row justify-content-start g-4">

                <div class="col-md-4">

                    <div class="card">

                        <img src="assets/images/dashboard/wardrobe.png"
                             class="dashboard-card-img">

                        <div class="card-body text-center">

                            <h4>

                                <i class="fa-solid fa-shirt"></i>

                                Wardrobe

                            </h4>

                            <p>
                                Manage your fashion collection
                            </p>

                            <a href="view-clothes.jsp"
                               class="btn btn-primary">

                                Open

                            </a>

                        </div>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card">

                        <img src="assets/images/dashboard/recommendation.png"
                             class="dashboard-card-img">

                        <div class="card-body text-center">

                            <h4>

                                <i class="fa-solid fa-wand-magic-sparkles"></i>

                                Recommendations

                            </h4>

                            <p>
                                Outfit Recommendations
                            </p>

                            <a href="recommendations.jsp"
                               class="btn btn-success">

                                Explore

                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <div class="footer">

       Smart Wardrobe Management & Outfit Recommendation System

    </div>


</body>
</html>