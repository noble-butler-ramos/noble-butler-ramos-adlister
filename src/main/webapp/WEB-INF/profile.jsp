<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <c:forEach var="ad" items="${userAds}">
        <div class="col-md-6">
            <div>
                <label>${ad.title}</label>
                <label>${ad.description}</label>
                <form action="/profile" method="post">
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
</body>
</html>
