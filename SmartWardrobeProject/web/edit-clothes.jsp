<%@ page import="com.smartwardrobe.dao.WardrobeDAO" %>

<%@ page import="com.smartwardrobe.model.WardrobeItem" %>

<%@ page import="com.smartwardrobe.model.User" %>

<%

    User user
            = (User) session.getAttribute("user");

    if (user == null) {

        response.sendRedirect("login.jsp");
    }

%>
<%    int itemId
            = Integer.parseInt(
                    request.getParameter("id"));

    WardrobeDAO dao
            = new WardrobeDAO();

    WardrobeItem item
            = dao.getItemById(itemId);

%>

<!DOCTYPE html>
<html>

    <head>

        <title>Edit Clothes</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
              rel="stylesheet">
        <link rel="stylesheet"
              href="css/style.css">
    </head>

    <body>

        <div class="container mt-5">

            <div class="row justify-content-center">

                <div class="col-md-6">

                    <div class="card shadow">

                        <div class="card-body">

                            <h2 class="text-center">

                                Edit Clothes

                            </h2>

                            <form action="updateClothes"
                                  method="post">

                                <input type="hidden"
                                       name="itemId"
                                       value="<%= item.getItemId()%>">

                                <div class="mb-3">

                                    <label>Item Name</label>

                                    <input type="text"
                                           name="itemName"
                                           class="form-control"
                                           value="<%= item.getItemName()%>">

                                </div>

                                <div class="mb-3">

                                    <label>Category</label>

                                    <select name="category" class="form-control">

                                        <option value="Top Wear" 
                                                <%= item.getCategory().equals("Top Wear") ? "selected" : ""%>>
                                            Top Wear
                                        </option>

                                        <option value="Bottom Wear" 
                                                <%= item.getCategory().equals("Bottom Wear") ? "selected" : ""%>>
                                            Bottom Wear
                                        </option>

                                        <option value="Footwear" 
                                                <%= item.getCategory().equals("Footwear") ? "selected" : ""%>>
                                            Footwear
                                        </option>

                                        <option value="Traditional" 
                                                <%= item.getCategory().equals("Traditional") ? "selected" : ""%>>
                                            Traditional
                                        </option>

                                    </select>

                                </div>

                                <div class="mb-3">

                                    <label>Color</label>

                                    <input type="text"
                                           name="color"
                                           class="form-control"
                                           value="<%= item.getColor()%>">

                                </div>

                                <div class="mb-3">

                                    <label>Occasion</label>

                                    <select name="occasion" class="form-control">

                                        <option value="Casual" 
                                                <%= item.getOccasion().equals("Casual") ? "selected" : ""%>>
                                            Casual
                                        </option>

                                        <option value="Party" 
                                                <%= item.getOccasion().equals("Party") ? "selected" : ""%>>
                                            Party
                                        </option>

                                        <option value="Office" 
                                                <%= item.getOccasion().equals("Office") ? "selected" : ""%>>
                                            Office
                                        </option>

                                        <option value="Wedding" 
                                                <%= item.getOccasion().equals("Wedding") ? "selected" : ""%>>
                                            Wedding
                                        </option>

                                    </select>

                                </div>

                                <button class="btn btn-primary w-100">

                                    Update Clothes

                                </button>

                            </form>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </body>
</html>