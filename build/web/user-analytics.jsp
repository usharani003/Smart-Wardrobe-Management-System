<%@ page import="java.sql.*" %>
<%@ page import="com.smartwardrobe.util.DBConnection" %>

<%
Connection con = DBConnection.getConnection();

String query =
"SELECT u.full_name, COUNT(w.item_id) total " +
"FROM users u " +
"LEFT JOIN wardrobe_items w ON u.user_id=w.user_id " +
"GROUP BY u.user_id";

PreparedStatement ps =
con.prepareStatement(query);

ResultSet rs =
ps.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
<title>User Analytics</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="css/style.css">
</head>

<body>

<div class="container mt-5">

<h2 class="text-center mb-4">
User Analytics
</h2>

<table class="table table-bordered table-striped">

<tr>
<th>User Name</th>
<th>Total Clothes</th>
</tr>

<%
while(rs.next()){
%>

<tr>
<td><%= rs.getString("full_name") %></td>
<td><%= rs.getInt("total") %></td>
</tr>

<%
}
%>

</table>

<div class="text-center">

<a href="admin-dashboard.jsp"
   class="btn btn-dark">

Back

</a>

</div>

</div>

</body>
</html>