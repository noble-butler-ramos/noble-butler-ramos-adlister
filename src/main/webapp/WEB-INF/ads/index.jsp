<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
</head>
<style>
    .card2 {
        margin: 45px;
        width: 275px;
    }
</style>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <h1 class="text-center" style="color: white;">Here are all the ads!</h1>

<div class="container">
        <c:forEach var="ad" items="${ads}">
            <div class="card card2 text-center" style="display: inline-flex">
                <div class="card-body">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <form action="/ad" method="post">
                    <div class="card-footer">
                        <input name="id" value="${ad.id}" type="hidden">
                        <input type="submit" value="Select Ad" class="btn btn-primary">
                    </div>
                    </form>
                </div>
            </div>
        </c:forEach>
</div>
</body>
</html>

