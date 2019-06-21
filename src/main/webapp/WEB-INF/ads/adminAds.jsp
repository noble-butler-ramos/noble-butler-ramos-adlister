<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/head.jsp" />
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <h1 class="text-center">Manage Ads</h1>
<div class="card-deck ml-3 mr-3">
    <c:forEach var="ad" items="${ads}">
        <div class="card text-center" style="width: 18rem;">
            <div class="card-body">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <form action="/manage_ads" method="post">
                    <input name="id" value="${ad.id}"type="hidden">
                    <button class="btn btn-primary"type="submit">Delete This Ad</button>
                </form>
                <form action="/editAd" method="post">
                    <input name="editId" value="${ad.id}" type="hidden">
                    <button class="btn btn-primary"type="submit">Edit This Ad</button>
                </form>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
