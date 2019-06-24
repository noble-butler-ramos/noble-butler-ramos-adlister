<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Adlister" />
    </jsp:include>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Welcome to Adlister!</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/modern-business.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <!-- Slide One - Set the background image for this slide in the line below -->
            <div class="carousel-item active" style="background-image: url(img/conceptual-cube-design-327186.jpg)">
                <div class="carousel-caption d-none d-md-block">
                    <h1>Search!</h1>
                    <h3>Search around for different things users are selling!</h3>
                </div>
            </div>
            <!-- Slide Two - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url(img/videoblocks-handing-over-money_ho6dpqysx_thumbnail-full01.png)">
                <div class="carousel-caption d-none d-md-block">
                    <h1>Sell!</h1>
                    <h3>From your old books to a TV you just dont use, post it and get that extra money you need!</h3>
                </div>
            </div>
            <!-- Slide Three - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url(img/adult-cellphone-cheerful-1530313.jpg)">
                <div class="carousel-caption d-none d-md-block">
                    <h1>Family Friendly</h1>
                    <h3>A family friendly and safe environment to get what you need done! We take pride in making sure everyone has a friendly interaction with a buyer/seller! </h3>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>

<!-- Page Content -->
<div class="container">

    <h1 class="my-4 text-center"style="color: white">Welcome to Adlister!</h1>

    <!-- Marketing Icons Section -->
    <div class="row">
        <div class="col-lg-4 mb-4">
            <div class="card h-100 text-center">
                <h4 class="card-header">Find what you need fast!</h4>
                <div class="card-body">
                    <p class="card-text">Looking for something but dont want to buy it new? Use the search bar to see if you can find what you need near you!</p>
                </div>
                <div class="card-footer">
                    <a href="/ads" class="btn btn-primary">View Ads</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100 text-center">
                <h4 class="card-header">Sell with ease!</h4>
                <div class="card-body">
                    <p class="card-text">Quickly create and account with us and get selling in no time! Its fast, its easy, and a quick way to pick up some extra cash!</p>
                </div>
                <div class="card-footer">
                    <a href="/login" class="btn btn-primary">Login Now!</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100 text-center">
                <h4 class="card-header">No account? No problem!</h4>
                <div class="card-body">
                    <p class="card-text">All you need is a valid email to get started and get instant access to all of our great features that we offer!</p>
                </div>
                <div class="card-footer">
                    <a href="/register" class="btn btn-primary">Register Now!</a>
                </div>
            </div>
        </div>
    </div>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>


</html>
