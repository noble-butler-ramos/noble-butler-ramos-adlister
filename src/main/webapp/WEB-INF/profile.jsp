<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<style>
    body {
        background: linear-gradient(to right, #0062E6, #33AEFF);
    }
    #center-title {
        text-align: center;
        padding-top: 18px;
        margin-bottom: -22px;
    }
    .card {
        display: inline-flex !important;
        margin: 67px;
    }
    .ad-images {
        width: 246px;
        height: 212px;
    }
    .text {
        color: white;
    }
</style>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1 id="center-title" class="text">Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <c:forEach var="ad" items="${userAds}">
        <div class="card text-center" style="width: 18rem;">
            <div class="card-body">
                <img class="ad-images" src="../img/placeholder.png">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <form action="/editAd" method="post">
                    <input name="editId" value="${ad.id}" type="hidden">
                    <button class="btn btn-primary"type="submit">Edit This Ad</button>
                </form>
                <form action="/profile" method="post">
                    <input name="id" value="${ad.id}"type="hidden">
                    <button class="btn btn-primary"type="submit">Delete This Ad</button>
                </form>
            </div>
        </div>
    </c:forEach>
<%--        <c:if test="${sessionScope.profileUser.id == sessionScope.user.id}">--%>
<%--            <form id="PFPUpload" method="post" enctype="multipart/form-data">--%>
<%--                <input id="file" accept="image/*" type="file" name="file"/>--%>
<%--            </form>--%>
<%--            ${message}--%>
<%--        </c:if>--%>
<%--        <jsp:include page="/WEB-INF/partials"/>--%>
<%--    </c:forEach>--%>
<%--<c:if test="${sessionScope.profileUser.id == sessionScope.user.id}">--%>
<%--    <script>--%>
<%--        function getBase64(file) {--%>
<%--            return new Promise((resolve, reject) => {--%>
<%--                const reader = new FileReader();--%>
<%--            reader.readAsDataURL(file);--%>
<%--            reader.onload = () => resolve(reader.result);--%>
<%--            reader.onerror = error => reject(error);--%>
<%--        });--%>
<%--        }--%>
<%--        $("#profileImage").click(function(e){--%>
<%--            $("#file").trigger('click');--%>
<%--        });--%>
<%--        $("#PFPUpload").change(function(e) {--%>
<%--            let file = $("#file")[0].files[0];--%>
<%--            getBase64(file).then(--%>
<%--                data => {--%>
<%--                $("#profileImage").attr("src", data);--%>
<%--        }--%>
<%--        );--%>
<%--            let data = new FormData();--%>
<%--            data.append('file-1',file);--%>
<%--            $.ajax({--%>
<%--                type: "POST",--%>
<%--                url: "/profile/"+${sessionScope.profileUser.id},--%>
<%--                enctype:"multipart/form-data",--%>
<%--                processData: false,  // Important!--%>
<%--                contentType: false,--%>
<%--                cache: false,--%>
<%--                data: data, // serializes the form's elements.--%>
<%--                success: function(data)--%>
<%--                {--%>
<%--                    $("#profileImage").attr("src","data:image/jpeg;base64,"+data);--%>
<%--                }--%>
<%--            });--%>
<%--        });--%>
<%--    </script>--%>
<%--</c:if>--%>
</body>
</html>