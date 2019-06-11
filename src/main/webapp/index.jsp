<%--
  Created by IntelliJ IDEA.
  User: fer
  Date: 2019-06-11
  Time: 09:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int counter = 0; %>
<html>
<head>
    <%@ include file="partials/header.jsp" %>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<%
    counter++;

if(counter == 1){
    System.out.println("counter = " + counter);
}

%>

<%= counter %>

<%-- This is a comment --%>

<!-- fer -->

This is my Adlister


<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>


<%-- This assumes we are visiting a page and have ?page_no=5 (or something
     similar) appended to the query string --%>
<p>EL "name" parameter: ${param.name}</p>
<p>User-Agent header: ${header["user-agent"]}</p>

<h1>Dashboard</h1>

<% request.setAttribute("menuItems", new String[]{"Home", "Contact", "Admin Dashboard"}); %>
<% request.setAttribute("isAdmin", true); %>


<c:if test="${isAdmin}">

    <main>
        <nav>
            <ul>
                <c:forEach items="${menuItems}" var="item">
                    <li>${item}</li>
                </c:forEach>
            </ul>
        </nav>
    </main>

</c:if>

<c:if test="${!isAdmin}">

    <main>
        <nav>
            <ul>
                <li>Mortal item 1</li>
                <li>Mortal item 2</li>
                <li>Mortal item 3</li>
            </ul>
        </nav>
    </main>

</c:if>

<%@ include file="partials/footer.jsp"%>
</body>
</html>
