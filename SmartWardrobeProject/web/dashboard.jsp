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

        <div class="hero-section">

            <div class="hero-overlay">

                <div class="hero-text">

                    <h1>
                        Welcome, <%= user.getFullName()%>
                    </h1>

                    <p>
                        Manage your wardrobe effortlessly
                    </p>

                </div>

            </div>

        </div>
        <div class="container mb-5">

            <div class="row justify-content-center g-4">

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
                                Smart outfit matching
                            </p>

                            <a href="recommendations.jsp"
                               class="btn btn-success">

                                Explore

                            </a>

                        </div>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card">

                        <img src="assets/images/dashboard/reports.png"
     class="dashboard-card-img">

                        <div class="card-body text-center">

                            <h4>

                                <i class="fa-solid fa-chart-line"></i>

                                Reports

                            </h4>

                            <p>
                                View wardrobe analytics
                            </p>

                            <a href="reports.jsp"
                               class="btn btn-dark rounded-pill px-4">
                                Open
                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="footer">

            Smart Wardrobe & Outfit Planning System

        </div>


</body>
</html>