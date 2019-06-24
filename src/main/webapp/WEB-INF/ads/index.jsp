<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="card-deck ml-3 mr-3">
    <h1 class="text-center">Here are all the ads!</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="card text-center card border-primary mb-3" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">${ad.title}</h5>
                <p>${ad.description}</p>
                <form action="/ad" method="post">
                    <input name="id" value="${ad.id}" type="hidden">
                    <input type="submit" value="Select Ad" class="btn btn-primary">
                </form>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
