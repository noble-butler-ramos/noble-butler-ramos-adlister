<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 2019-06-12
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <img src="${imgUrl}" alt="a cat">
    <form method="POST" action="/cats">
        <input type="hidden" name="forget" value="true">
        <button>Forget Cat Preference</button>
    </form>

</body>
</html>
