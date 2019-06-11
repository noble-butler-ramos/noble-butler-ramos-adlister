<%--
  Created by IntelliJ IDEA.
  User: fer
  Date: 2019-06-11
  Time: 09:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0;

%>
<html>
<head>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">--%>

</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<%
    counter++;

if(counter == 1){
    System.out.println("counter = " + counter);
}

%>

<%-- This is a comment --%>

<!-- fer -->

This is my Adlister

</body>
</html>
