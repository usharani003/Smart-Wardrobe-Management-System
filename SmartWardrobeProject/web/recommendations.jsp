<%@ page import="com.smartwardrobe.model.User" %>

<%

User user =
(User)session.getAttribute("user");

if(user == null){

    response.sendRedirect("login.jsp");
}

%>
<!DOCTYPE html>
<html>

<head>

<title>Smart Recommendations</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet">
<link rel="stylesheet"
href="css/style.css">
</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card shadow">

<div class="card-body">

<h2 class="text-center mb-4">

Smart Outfit Recommendations

</h2>

<form action="recommendation"
      method="post">

<div class="mb-3">

<label>Weather</label>

<select name="weather" class="form-control">

<option>Sunny</option>

<option>Hot</option>

<option>Cloudy</option>

<option>Rainy</option>

<option>Cold</option>

</select>

</div>

<div class="mb-3">

<label>Occasion</label>

<select name="occasion" class="form-control">

<option>Casual</option>

<option>College</option>

<option>Office</option>

<option>Party</option>

<option>Wedding</option>

<option>Travel</option>

</select>

</div>

<div class="mb-3">

<label>Music Mood</label>

<select name="mood" class="form-control">

<option>Calm</option>

<option>Energetic</option>

<option>Party</option>

<option>Romantic</option>

<option>Focus</option>

<option>Workout</option>

</select>

</div>

<div class="mb-3">

<label>Favorite Color</label>

<input type="text"
       name="color"
       class="form-control">

</div>

<button class="btn btn-primary w-100">

Get Recommendations

</button>

</form>

<hr>

</div>

</div>

</div>

</div>

</div>

</body>
</html>