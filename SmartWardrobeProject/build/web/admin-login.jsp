<!DOCTYPE html>
<html>

<head>

<title>Admin Login</title>

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

Admin Login

</h2>

<form action="adminLogin"
      method="post">

<div class="mb-3">

<label>Username</label>

<input type="text"
       name="username"
       class="form-control">

</div>

<div class="mb-3">

<label>Password</label>

<input type="password"
       name="password"
       class="form-control">

</div>

<button class="btn btn-dark w-100">

Login

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>
</html>