<!DOCTYPE html>
<html>

<head>

<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet">
<link rel="stylesheet"
href="css/style.css">
</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-5">

<div class="card shadow">

<div class="card-body">

<h2 class="text-center">
User Registration
</h2>

<form action="register" method="post">

<div class="mb-3">

<label>Full Name</label>

<input type="text"
       name="fullname"
       class="form-control"
       pattern="[A-Za-z ]{3,}"
       title="Only letters allowed"
       required>
</div>

<div class="mb-3">

<label>Email</label>

<input type="email"
       name="email"
       class="form-control"
       required>

</div>

<div class="mb-3">

<label>Password</label>

<input type="password"
       name="password"
       class="form-control"
       minlength="6"
       required>

</div>

<button class="btn btn-primary w-100">
Register
</button>

</form>

<br>

<a href="login.jsp">
Already have account?
</a>

</div>

</div>

</div>

</div>

</div>

</body>
</html>