<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />
    <div class="container bg-primary">
        <h1>List Ads</h1>
        <c:forEach items="${ads}" var="ad">
            <h1>${ad.title}</h1>
            <p>${ad.description}</p>
            User id<a href="#">${ad.userId}</a>
        </c:forEach>
    </div>
</body>
</html>
