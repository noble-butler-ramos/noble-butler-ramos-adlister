<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<jsp:include page="/WEB-INF/partials/head.jsp" />
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/modern-business.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <h1 class="text-center mt-3" style="color: white;">Manage Ads</h1>

<div class="container text-center">
    <div class="row">
    <c:forEach var="ad" items="${ads}">
        <div class="card h-100 text-center m-5 col-3">
            <h4 class="card-header">${ad.title}</h4>
            <div class="card-body">
                <p>${ad.description}</p>
            </div>
            <form action="/ad" method="post">
                <form action="/admin/manage_ads" method="post">
                    <input name="id" value="${ad.id}"type="hidden">
                    <button class="btn btn-primary"type="submit">Delete This Ad</button>
                </form>
                <form action="/editAd" method="post">
                    <input name="editId" value="${ad.id}" type="hidden">
                    <button class="btn btn-primary"type="submit">Edit This Ad</button>
                </form>
            </form>
        </div>
    </c:forEach>
</div>
    </div>
</div>
</body>
</html>
