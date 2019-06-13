<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 2019-06-12
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color Form</title>
</head>
<body>

<form action="/color" method="POST">
    <fieldset>
        <legend>Choose Preferred Color</legend>
        <label>Color</label>
        <input type="color" name="color">
    </fieldset>
    <button>Submit</button>
</form>

</body>
</html>
