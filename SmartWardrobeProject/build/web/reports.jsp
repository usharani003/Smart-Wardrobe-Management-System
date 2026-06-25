<%@ page import="com.smartwardrobe.dao.AdminDAO" %>

<%

    String admin
            = (String) session.getAttribute("admin");

    if (admin == null) {

        response.sendRedirect(
                "admin-login.jsp");
    }

    AdminDAO dao
            = new AdminDAO();

    int topWear
            = dao.getCategoryCount(
                    "Top Wear");

    int bottomWear
            = dao.getCategoryCount(
                    "Bottom Wear");

    int footwear
            = dao.getCategoryCount(
                    "Footwear");

    int traditional
            = dao.getCategoryCount(
                    "Traditional");
    int total
            = topWear
            + bottomWear
            + footwear
            + traditional;

    int topPercent
            = (total == 0) ? 0
                    : (topWear * 100) / total;

    int bottomPercent
            = (total == 0) ? 0
                    : (bottomWear * 100) / total;

    int footPercent
            = (total == 0) ? 0
                    : (footwear * 100) / total;

    int tradPercent
            = (total == 0) ? 0
                    : (traditional * 100) / total;

%>

<!DOCTYPE html>
<html>

    <head>

        <title>Reports</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
              rel="stylesheet">

        <link rel="stylesheet"
              href="css/style.css">

    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark">

            <div class="container-fluid">

                <a class="navbar-brand">

                    <i class="fa-solid fa-chart-pie"></i>

                    Fashion Reports

                </a>

                <div>

                    <a href="admin-dashboard.jsp"
                       class="btn btn-outline-light">

                        Dashboard

                    </a>

                </div>

            </div>

        </nav>

        <div class="container mt-5">

            <div class="text-center mb-5">

                <h1>

                    Wardrobe Analytics

                </h1>

                <p>

                    Fashion category insights and statistics

                </p>

            </div>

            <div class="row g-4">

                <!-- TOP WEAR -->

                <div class="col-md-3">

                    <div class="card text-center">

                        <img src="assets/images/clothes/tshirt.jpg">

                        <div class="card-body">

                            <h4>Top Wear</h4>

                            <h1 class="display-5">

                                <%= topWear%>

                            </h1>

                            <div class="progress">

                                <div class="progress-bar bg-primary"
                                     style="width:<%= topPercent %>%">

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                <!-- BOTTOM WEAR -->

                <div class="col-md-3">

                    <div class="card text-center">

                        <img src="assets/images/clothes/jeans.jpg">

                        <div class="card-body">

                            <h4>Bottom Wear</h4>

                            <h1 class="display-5">

                                <%= bottomWear%>

                            </h1>

                            <div class="progress">

                                <div class="progress-bar bg-success"
                                     style="width:<%= bottomPercent %>%">

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                <!-- FOOTWEAR -->

                <div class="col-md-3">

                    <div class="card text-center">

                        <img src="assets/images/clothes/shoes.jpg">

                        <div class="card-body">

                            <h4>Footwear</h4>

                            <h1 class="display-5">

                                <%= footwear%>

                            </h1>

                            <div class="progress">

                                <div class="progress-bar bg-warning"
                                     style="width:<%= footPercent %>%">

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                <!-- TRADITIONAL -->

                <div class="col-md-3">

                    <div class="card text-center">

                        <img src="assets/images/clothes/saree.jpg">

                        <div class="card-body">

                            <h4>Traditional</h4>

                            <h1 class="display-5">

                                <%= traditional%>

                            </h1>

                            <div class="progress">

                                <div class="progress-bar bg-danger"
                                     style="width:<%= tradPercent %>%">

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <div class="text-center mt-5">

                <a href="admin-dashboard.jsp"
                   class="btn btn-dark btn-lg">

                    Back to Dashboard

                </a>

            </div>

        </div>

        <div class="footer">

            Fashion Analytics Reporting System

        </div>

    </body>
</html>