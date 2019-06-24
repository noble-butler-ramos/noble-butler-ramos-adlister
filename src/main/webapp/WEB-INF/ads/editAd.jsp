<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Ads</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
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
                    <h5 class="card-title text-center">Edit Ad</h5>
                    <form class="form-signin" action="/editAd" method="post">
                        <div class="form-label-group">
                            <input id="title" name="editedTitle" class="form-control" type="text" value="${ad.title}">
                        </div>
                        <div class="form-label-group">
                            <textarea rows="13" id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
                        </div>
                        <input value="${ad.id}" name="editId" type="hidden">

                        <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i>Edit Ad</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
