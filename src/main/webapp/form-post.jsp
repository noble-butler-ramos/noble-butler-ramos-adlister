<%--
  Created by IntelliJ IDEA.
  User: fer
  Date: 2019-06-11
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>90's Google</h3>
<form action="" method="post">
    <label for="q">Search</label>
    <input type="text" id="q" name="q" >
</form>


<c:if test="${param.q != null}">
    <p>You searched for: ${param.q}</p>
</c:if>

</body>
</html>
