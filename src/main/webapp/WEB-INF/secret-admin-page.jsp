<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/modern-business.css" rel="stylesheet">
</head>
<jsp:include page="partials/head.jsp"/>
<body>
<jsp:include page="partials/navbar.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading -->
    <h1 class="my-4 text-center" style="color: white">Welcome to the Admin Dashboard</h1>

    <div class="row ml-3 text-center">
        <div class="col-lg-4 col-sm-6 mb-4">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="../img/edit2.png" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a>Edit Ads & Users</a>
                    </h4>
                    <p class="card-text mb-3">As an Admin, you have the power to Edit Ads and Users. Info a user may include by accident such as a phone number, Address, etc. We want to keep our users as safe as possible and give them a safe environment to work within. </p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="card h-100">
                <a href="#"><img class="card-img-top mb-3" src="../img/Stop-Illegal-Activities.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title mt-3">
                        <a>Delete Ads & Users</a>
                    </h4>
                    <p class="card-text mb-4">As an Admin, you have the power to delete Ads & Users. No one wants to go check the ads section and see something that could be vulgar or illegal. We do our best to stay on top of seeing new Ads to make sure this doesnt happen.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 mb-1">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="../img/picture-1-1486774242.png" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a>Make a user an Admin</a>
                    </h4>
                    <p class="card-text mb-3">As our business increases it can get hectic combing through everything with the small staff we have. As the company grows we will need more people to help us keep this a clean and safe environment. </p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
