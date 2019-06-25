<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
    <title>${ad.title} for sale</title>

</head>
<style>
    body {
        background: linear-gradient(to right, #0062E6, #33AEFF);    }
</style>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<h2 class="text-center">Single Ad Page</h2>
<div class="card-deck ml-3 mr-3">
    <div class="card text-center card border-primary mb-3" style="width: 18rem;">
        <div class="card-body">
            <h2 class="card-title">${ad.title}</h2>
            <p class="card-subtitle mb-2 text-muted">${ad.description}</p>
            <h2 class="card-title">${user.username}</h2>
            <p class="card-subtitle mb-2 text-muted">${user.email}</p>
        </div>
    </div>
</div>


</body>
</html>
