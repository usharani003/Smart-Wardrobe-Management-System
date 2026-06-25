<%@ page import="java.util.ArrayList" %>

<%@ page import="com.smartwardrobe.model.WardrobeItem" %>
<%@ page import="com.smartwardrobe.model.User" %>

<%

User user =
(User)session.getAttribute("user");

if(user == null){

    response.sendRedirect("login.jsp");
}

%>
<%

ArrayList<WardrobeItem> list =

(ArrayList<WardrobeItem>)
request.getAttribute("items");

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

<table class="table table-bordered">

<tr>

<th>ID</th>
<th>Item Name</th>
<th>Category</th>
<th>Color</th>
<th>Occasion</th>

</tr>

<%

if(list != null){

for(WardrobeItem item : list){

%>

<tr>

<td><%= item.getItemId() %></td>

<td><%= item.getItemName() %></td>

<td><%= item.getCategory() %></td>

<td><%= item.getColor() %></td>

<td><%= item.getOccasion() %></td>

</tr>

<%
}
}
%>

</table>

</div>

</body>
</html>