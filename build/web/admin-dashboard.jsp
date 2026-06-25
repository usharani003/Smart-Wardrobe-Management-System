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

    int totalUsers
            = dao.getTotalUsers();

    int totalClothes
            = dao.getTotalClothes();

%>

<!DOCTYPE html>
<html>

    <head>

        <title>Admin Dashboard</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
              rel="stylesheet">
        <link rel="stylesheet"
              href="css/style.css">
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark">

            <div class="container-fluid">

                <a class="navbar-brand">

                    <i class="fa-solid fa-user-shield"></i>

                    Admin Dashboard

                </a>

                <div>

                    <a href="index.jsp"
                       class="btn btn-danger">

                        Logout

                    </a>

                </div>

            </div>

        </nav>

        <div class="container mt-5">

            <div class="text-center mb-5">

                <h1>

                    Fashion Analytics Dashboard

                </h1>

                <p>

                    Smart Wardrobe System Statistics

                </p>

            </div>

            <div class="row">

                <!-- USERS -->

                <div class="col-md-6">

                    <div class="card">

                        <div class="card-body text-center">

                            <i class="fa-solid fa-users fa-3x mb-3"></i>

                            <h2>Total Users</h2>

                            <h1 class="display-4">

                                <%= totalUsers%>

                            </h1>

                            <p>

                                Registered platform users

                            </p>

                        </div>

                    </div>

                </div>

                <!-- CLOTHES -->

                <div class="col-md-6">

                    <div class="card">

                        <div class="card-body text-center">

                            <i class="fa-solid fa-shirt fa-3x mb-3"></i>

                            <h2>Total Clothes</h2>

                            <h1 class="display-4">

                                <%= totalClothes%>

                            </h1>

                            <p>

                                Total wardrobe items uploaded

                            </p>

                        </div>

                    </div>

                </div>

            </div>

            <div class="row mt-5">

                <div class="col-md-4">

                    <div class="card">

                        <img src="assets/images/admin/user-analytics.png">

                        <div class="card-body text-center">

                            <h4>User Analytics</h4>

                            <p>

                                View registered users and wardrobe activity

                            </p>
                            <a href="user-analytics.jsp"
                               class="btn btn-primary">

                                View User Analytics

                            </a>

                        </div>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card">

                        <img src="assets/images/admin/fashion-analytics.png">

                        <div class="card-body text-center">

                            <h4>Fashion Insights</h4>

                            <p>

                                View clothing category statistics

                            </p>
                            <a href="fashion-analytics.jsp"
                               class="btn btn-primary">

                                View Fashion Analytics

                            </a>

                        </div>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card">

                        <img src="assets/images/admin/reports.png">

                        <div class="card-body text-center">

                            <h4>System Reports</h4>

                            <p>

                                View overall wardrobe statistics

                            </p>

                            <a href="reports.jsp"
                               class="btn btn-primary">

                                Open Reports

                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="footer">

            Smart Wardrobe Admin Analytics

        </div>

    </body>
</html>