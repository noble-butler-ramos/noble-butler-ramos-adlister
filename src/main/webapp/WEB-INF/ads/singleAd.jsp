<%--
  Created by IntelliJ IDEA.
  User: dereknoble
  Date: 2019-06-18
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<h2>This is my single ad page</h2>

<h2>${ad.title}</h2>
<p>${ad.description}</p>
<h2>Username - ${user.username}</h2>
<p>Email - ${user.email}</p>


</body>
</html>
