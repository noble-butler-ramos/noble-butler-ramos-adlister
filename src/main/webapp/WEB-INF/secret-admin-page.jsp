<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<jsp:include page="partials/head.jsp"/>
<jsp:include page="partials/navbar.jsp"/>
<body>
<h1>Admin Page</h1>

<div class="container">
    <h1>Here are all the users!</h1>
</div>

<c:forEach var="singleuser" items="${users}">
    <div class="card" style="width: 18rem;">
        <div class="card-body">

                <h2 class="card-title">${singleuser.username}</h2>
                <p class="card-subtitle mb-2 text-muted">${singleuser.email}</p>
            <form action="/admin" method="post">
                <input name="deleteUser" value="${singleuser.id}" type="hidden">
                <input type="submit" class="btn btn-block btn-primary" value="Delete User">
            </form>
        </div>
    </div>
</c:forEach>
</body>
</html>
