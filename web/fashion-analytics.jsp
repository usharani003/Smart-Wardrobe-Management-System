<%@ page import="com.smartwardrobe.dao.AdminDAO" %>

<%
AdminDAO dao = new AdminDAO();

int topWear =
dao.getCategoryCount("Top Wear");

int bottomWear =
dao.getCategoryCount("Bottom Wear");

int footwear =
dao.getCategoryCount("Footwear");

int traditional =
dao.getCategoryCount("Traditional");
%>

<!DOCTYPE html>
<html>
<head>

<title>Fashion Analytics</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="css/style.css">

</head>

<body>

<div class="container mt-5">

<h2 class="text-center mb-4">
Fashion Analytics
</h2>

<div class="row">

<div class="col-md-3">
<div class="card text-center p-3">
<h4>Top Wear</h4>
<h1><%= topWear %></h1>
</div>
</div>

<div class="col-md-3">
<div class="card text-center p-3">
<h4>Bottom Wear</h4>
<h1><%= bottomWear %></h1>
</div>
</div>

<div class="col-md-3">
<div class="card text-center p-3">
<h4>Footwear</h4>
<h1><%= footwear %></h1>
</div>
</div>

<div class="col-md-3">
<div class="card text-center p-3">
<h4>Traditional</h4>
<h1><%= traditional %></h1>
</div>
</div>

</div>

<div class="text-center mt-4">

<a href="admin-dashboard.jsp"
   class="btn btn-dark">

Back

</a>

</div>

</div>

</body>
</html>