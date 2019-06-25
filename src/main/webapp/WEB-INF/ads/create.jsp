<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <h5 class="card-title text-center">Create Ad</h5>
                        <form class="form-signin" action="/ads/create" method="post">
                            <div class="form-label-group">
                                <input type="text" id="title" name="title" class="form-control" placeholder="Username" required autofocus>
                                <label for="title">Title</label>
                            </div>
                            <div class="form-label-group">
                                <textarea rows="13" type="text" id="description" name="description" class="form-control" placeholder="Description" required></textarea>
                                <label for="description"></label>
                            </div>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="Create Ad">Create Ad</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
