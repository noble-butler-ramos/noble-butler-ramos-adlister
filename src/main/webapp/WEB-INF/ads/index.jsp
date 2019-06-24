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
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <h1 class="text-center" style="color: white;">Here are all the ads!</h1>

<div class="container text-center">
    <div class="row">
        <c:forEach var="ad" items="${ads}">
            <div class="card h-100 text-center m-5 col-3">
                <h4 class="card-header">${ad.title}</h4>
                <div class="card-body">
                    <p>${ad.description}</p>
                </div>
                <form action="/ad" method="post">
                    <div class="card-footer">
                        <input name="id" value="${ad.id}" type="hidden">
                        <input type="submit" value="Select Ad" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </c:forEach>
</div>
</div>
</body>
</html>

