<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Ads</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/head.jsp"/>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<h1>Edit the ad here</h1>
<form action="/editAd" method="post">
    <input type="text" value="${ad.title}" name="editedTitle">
    <textarea name="description">${ad.description}</textarea>
    <input value="${ad.id}" name="editId" type="hidden">
    <input type="submit" value="Edit Ad">
</form>
</body>
</html>
