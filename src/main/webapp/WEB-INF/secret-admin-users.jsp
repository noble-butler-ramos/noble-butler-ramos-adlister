<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<jsp:include page="partials/head.jsp"/>
<jsp:include page="partials/navbar.jsp"/>
<body>

<div class="container">
    <h1 class="text-center">Admin Page</h1>
    <h1 class="text-center">Here are all the users!</h1>
</div>
<div class="card-deck ml-3 mr-3">
    <c:forEach var="singleuser" items="${users}">
        <div class="card text-center card border-primary mb-3" style="width: 18rem;">
            <div class="card-body">
                <h2 class="card-title">${singleuser.username}</h2>
                <p class="card-subtitle mb-2 text-muted">${singleuser.email}</p>
                <form action="/admin" method="post">
                    <input name="deleteUser" value="${singleuser.id}" type="hidden">
                    <input type="submit" class="btn btn-block btn-primary" value="Delete User">
                </form>
                <form action="/admin/manage_users" method="post">
                    <input name="adminId" type="hidden" value="${singleuser.id}">
                    <button type="submit">Make user an Admin</button>
                </form>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
