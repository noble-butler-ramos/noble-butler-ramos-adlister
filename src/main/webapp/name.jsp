<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 2019-06-12
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>Name Form</h1>
    <form action="/name" method="POST">
        <label for="name">Enter Name</label>
        <input type="text" placeholder="Enter name" name="name" id="name">
        <button>Submit</button>
    </form>

</body>
</html>
