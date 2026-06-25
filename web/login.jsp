<!DOCTYPE html>
<html>

    <head>

        <title>Login</title>

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
                                User Login
                            </h2>

                            <form action="login" method="post">

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
                                           required>

                                </div>

                                <button class="btn btn-success w-100">
                                    Login
                                </button>

                            </form>

                            <br>

                            <a href="register.jsp">
                                Create New Account
                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </body>
</html>