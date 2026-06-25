<%@ page import="java.util.ArrayList" %>

<%@ page import="com.smartwardrobe.model.WardrobeItem" %>
<%@ page import="com.smartwardrobe.model.User" %>

<%

    User user
            = (User) session.getAttribute("user");

    if (user == null) {

        response.sendRedirect("login.jsp");
    }

%>
<%    ArrayList<WardrobeItem> list
            = (ArrayList<WardrobeItem>) request.getAttribute("items");

%>

<!DOCTYPE html>
<html>

    <head>

        <title>Search Results</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
              rel="stylesheet">
        <link rel="stylesheet"
              href="css/style.css">
    </head>

    <body>

        <div class="container mt-5">

            <h2>Search Results</h2>

            <a href="view-clothes.jsp"
               class="btn btn-secondary mb-3">

                Back

            </a>

            <div class="gallery-grid wardrobe-gallery">

                <%    if (list != null) {

                        for (WardrobeItem item : list) {
                %>

                <div class="card h-100">

                    <img class="wardrobe-img"
                         src="<%=(item.getImagePath() != null
                                 && !item.getImagePath().isEmpty())
                                         ? request.getContextPath() + "/" + item.getImagePath()
                                         : (item.getCategory().equalsIgnoreCase("Top Wear"))
                                         ? "assets/images/clothes/tshirt.jpg"
                                         : (item.getCategory().equalsIgnoreCase("Bottom Wear"))
                                         ? "assets/images/clothes/jeans.jpg"
                                         : (item.getCategory().equalsIgnoreCase("Footwear"))
                                         ? "assets/images/clothes/shoes.jpg"
                                         : (item.getCategory().equalsIgnoreCase("Traditional"))
                                         ? "assets/images/clothes/saree.jpg"
                                         : (item.getCategory().equalsIgnoreCase("Party Wear"))
                                         ? "assets/images/clothes/partywear.jpg"
                                         : (item.getCategory().equalsIgnoreCase("Formal Wear"))
                                         ? "assets/images/clothes/blazer.jpg"
                                         : (item.getCategory().equalsIgnoreCase("Sports Wear"))
                                         ? "assets/images/clothes/sportswear.jpg"
                                         : (item.getCategory().equalsIgnoreCase("Winter Wear"))
                                         ? "assets/images/clothes/hoodie.jpg"
                     : "assets/images/clothes/default.jpg"%>"

                         onerror="this.src='assets/images/clothes/default.jpg'">

                    <div class="card-body">

                        <h5>
                            <%= item.getItemName()%>
                        </h5>

                        <p>
                            Category:
                            <%= item.getCategory()%>
                        </p>

                        <p>
                            Color:
                            <%= item.getColor()%>
                        </p>

                        <p>
                            Occasion:
                            <%= item.getOccasion()%>
                        </p>

                    </div>

                </div>

                <%
                        }
                    }
                %>

            </div>

        </div>

    </body>
</html>