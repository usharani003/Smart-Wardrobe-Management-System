<%@ page import="java.util.ArrayList" %>

<%@ page import="com.smartwardrobe.dao.WardrobeDAO" %>

<%@ page import="com.smartwardrobe.model.WardrobeItem" %>

<%@ page import="com.smartwardrobe.model.User" %>

<%

    User user
            = (User) session.getAttribute("user");

    if (user == null) {

        response.sendRedirect("login.jsp");
    }
    WardrobeDAO dao
            = new WardrobeDAO();

    ArrayList<WardrobeItem> list
            = dao.getItemsByUser(user.getUserId());

%>

<!DOCTYPE html>
<html>

    <head>

        <title>View Clothes</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
              rel="stylesheet">
        <link rel="stylesheet"
              href="css/style.css">
    </head>

    <body>

        <div class="container mt-5">

            <h2>Your Wardrobe</h2>
            <form action="searchClothes"
                  method="post"
                  class="row mb-4">

                <div class="col-md-4">

                    <input type="text"
                           name="keyword"
                           placeholder="Search clothes"
                           class="form-control">

                </div>

                <div class="col-md-4">

                    <select name="category"
                            class="form-control">

                        <option value="">All Categories</option>

                        <option>Top Wear</option>

                        <option>Bottom Wear</option>

                        <option>Footwear</option>

                        <option>Traditional</option>

                    </select>

                </div>

                <div class="col-md-4">

                    <button class="btn btn-primary">

                        Search

                    </button>

                </div>

            </form>
            <a href="add-clothes.jsp"
               class="btn btn-success mb-3">

                Add New Clothes

            </a>

            <div class="gallery-grid wardrobe-gallery">

                <%    for (WardrobeItem item : list) {

                %>

                <div class="card">

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

                        <a href="edit-clothes.jsp?id=<%= item.getItemId()%>"
                           class="btn btn-warning">

                            Edit

                        </a>

                        <a href="deleteClothes?id=<%= item.getItemId()%>"
                           class="btn btn-danger">

                            Delete

                        </a>

                    </div>

                </div>

                <%
                    }
                %>

            </div>

        </div>

    </body>
</html>