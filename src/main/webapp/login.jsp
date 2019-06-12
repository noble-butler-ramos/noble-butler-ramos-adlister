<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="partials/head.jsp"%>
</head>
<body>

<%@ include file="partials/nav.jsp"%>

<%

    if(request.getMethod().equalsIgnoreCase("post")){
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username.equals("admin") && password.equals("password")){
            response.sendRedirect("/profile.jsp");
        }

    }

%>

<c:if test="${param.username}">

</c:if>


<form action="/login.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" name="username" id="username">
    <label for="password">Password</label>
    <input type="password" name="password" id="password">
    <button>Login</button>
</form>

</body>
</html>
