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
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center">Registration Form</h5>
                    <form class="form-signin" action="/register" method="post">
                        <div class="form-label-group">
                            <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
                            <label for="username">Username</label>
                        </div>

                        <div class="form-label-group">
                            <input type="email" id="email" name="email" class="form-control" placeholder="Email">
                            <label for="email">Email</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                            <label for="password">Password</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="confirm_password" name="confirm_password" class="form-control" placeholder="Confirm Password" required>
                            <label for="confirm_password">Confirm Password</label>
                        </div>

                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="Log In">Register Now!</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

