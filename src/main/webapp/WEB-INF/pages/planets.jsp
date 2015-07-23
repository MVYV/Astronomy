<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <%--<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">--%>
    <%--<script src="<c:url value='/resources/js/jquery.js' />" ></script>--%>
    <%--<script src="<c:url value='/resources/js/bootstrap.min.js' />" ></script>--%>
    <script src="<c:url value='/resources/js/getAbout.js' />" ></script>
</head>
<body>
<jsp:include page="linear_navigation.jsp"></jsp:include>
<div class="container">
    <h2>Planets</h2>
    <p>Planets of The Solar system:</p>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Name</th>
            <th>Satellites number</th>
            <th>Radius</th>
        </tr>
        </thead>
        <c:forEach var="num" items="${planetsList}">
            <tbody>
            <tr>
                <td>
                    <a href="/about?name=${num.name}&page=planets">${num.name}</a>
                </td>
                <td>${num.satellites}</td>
                <td>${num.radius}</td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
</div>
</body>
</html>
