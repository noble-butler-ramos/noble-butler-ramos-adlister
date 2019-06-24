<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/modern-business.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <body>
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <h5 class="card-title text-center">Sign In</h5>
                        <form class="form-signin" action="/login" method="post">
                            <div class="form-label-group">
                                <input type="text" id="username" name="username"class="form-control" placeholder="Username" required autofocus>
                                <label for="username">Username</label>
                            </div>

                            <div class="form-label-group">
                                <input type="password" id="password" name="password"class="form-control" placeholder="Password" required>
                                <label for="password">Password</label>
                            </div>

                            <div class="custom-control custom-checkbox mb-3">
                                <input type="checkbox" class="custom-control-input" id="customCheck1">
                                <label class="custom-control-label" for="customCheck1">Remember password</label>
                            </div>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="Log In">Sign in</button>
                            <hr class="my-4">
                        </form>
                        <form action="/register">
                            <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i>Register Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>



</body>
</html>
