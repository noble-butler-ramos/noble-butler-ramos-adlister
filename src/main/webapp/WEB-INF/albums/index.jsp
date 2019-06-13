<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Albums" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the all albums!</h1>

    <c:forEach var="album" items="${albums}">
        <div class="col-md-6">
            <h2>${album.artist}</h2>
            <p>${album.sales}</p>
            <p>${album.id}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
