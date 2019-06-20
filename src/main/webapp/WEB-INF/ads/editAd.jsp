<%--
  Created by IntelliJ IDEA.
  User: dereknoble
  Date: 2019-06-19
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit the ad here</h1>
<form action="/editAd" method="post">
    <input type="text" value="${ad.title}" name="editedTitle">
    <textarea name="description">${ad.description}</textarea>
    <input type="text" value="${ad.id}" name="editId" type="hidden">
    <input type="submit" value="Edit Ad">
</form>
</body>
</html>
