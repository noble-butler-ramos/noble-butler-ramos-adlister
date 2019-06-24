<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Ads</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/head.jsp"/>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <%--<textarea name="description">${ad.description}</textarea>--%>
    <%--<input value="${ad.id}" name="editId" type="hidden">--%>
    <%--<input type="submit" value="Edit Ad">--%>

    <div class="container">
        <h1>Edit Ad</h1>
        <form action="/editAd" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="editedTitle" class="form-control" type="text" value="${ad.title}">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
            </div>
            <input value="${ad.id}" name="editId" type="hidden">
            <input type="submit" class="btn btn-block btn-primary" value="Edit Ad">
        </form>
    </div>
</form>
</body>
</html>
