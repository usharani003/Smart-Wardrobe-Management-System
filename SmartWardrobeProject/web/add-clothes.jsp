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

<title>Add Clothes</title>

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
Add Clothes
</h2>

<form action="addClothes"
      method="post"
      enctype="multipart/form-data">
<div class="mb-3">

<label>Item Name</label>

<input type="text"
       name="itemName"
       class="form-control"
       minlength="2"
       required>

</div>

<div class="mb-3">

<label>Category</label>

<select name="category"
        class="form-control">

<option>Top Wear</option>

<option>Bottom Wear</option>

<option>Footwear</option>

<option>Traditional</option>

</select>

</div>

<div class="mb-3">

<label>Color</label>

<input type="text"
       name="color"
       class="form-control">

</div>

<div class="mb-3">

<label>Occasion</label>

<select name="occasion"
        class="form-control">

<option>Casual</option>

<option>Party</option>

<option>Office</option>

<option>Wedding</option>

</select>

</div>
<div class="mb-3">

<label>Upload Clothing Image</label>

<input type="file"
       name="image"
       class="form-control"
       accept="image/*"
       onchange="previewImage(event)">

</div>

<div class="mb-3 text-center">

<img id="preview"
     src="assets/images/clothes/tshirt.jpg"
     class="preview-img rounded shadow">

</div>
<button class="btn btn-primary w-100">

Add Clothes

</button>

</form>

</div>

</div>

</div>

</div>

</div>
<script>

function previewImage(event){

    var reader =
    new FileReader();

    reader.onload = function(){

        var output =
        document.getElementById('preview');

        output.src =
        reader.result;
    }

    reader.readAsDataURL(
    event.target.files[0]);
}

</script>
</body>
</html>