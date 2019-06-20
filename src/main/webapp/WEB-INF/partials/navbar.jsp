<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        <%--</div>--%>
        <%--<ul class="nav navbar-nav navbar-right">--%>
            <%--<li><a href="/login">Login</a></li>--%>
            <%--<li><a href="/logout">Logout</a></li>--%>
            <%--<li><a href="/register">Register</a></li>--%>
            <%--<li><a href="/ads">Ads</a></li>--%>
            <%--<li><a href="/profile">Profile</a></li>--%>
            <%--<li><a href="/manage_ads">Manage Ads</a></li>--%>
            <%--<li><a href="/manage_users">Manage Users</a></li>--%>
        <%--</ul>--%>

        <c:if test="${user.username == null}">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
            <li><a href="/register">Register</a></li>
        </ul>
        </c:if>
        <c:if test="${user.username != null && isAdmin == false}">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/logout">Logout</a></li>
                <li><a href="/profile">Profile</a></li>
                <li><a href="/ads/create">Create Ad</a></li>
            </ul>
        </c:if>
        <c:if test="${isAdmin}">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/logout">Testingggg</a></li>
                <li><a href="/profile">Profile</a></li>
                <li><a href="/ads/create">Create Ad</a></li>
            </ul>
        </c:if>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
