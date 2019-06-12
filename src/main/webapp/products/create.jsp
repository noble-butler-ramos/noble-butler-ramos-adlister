<%--
  Created by IntelliJ IDEA.
  User: fer
  Date: 2019-06-12
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/products/create" method="post">
    <label for="title">Title</label>
    <input type="text" name="title" id="title">
    <label for="price">Price</label>
    <input type="number" name="price" id="price">
    <label for="desc">Description</label>
    <textarea name="desc" id="desc">

    </textarea>
    <button>Create Product</button>
</form>

</body>
</html>
