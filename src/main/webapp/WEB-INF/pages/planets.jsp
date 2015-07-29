<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <%--<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">--%>
    <%--<script src="<c:url value='/resources/js/jquery.js' />" ></script>--%>
    <%--<script src="<c:url value='/resources/js/bootstrap.min.js' />" ></script>--%>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <script src="<c:url value='/resources/js/getAbout.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/equal_div.js' />" ></script>
</head>
<body>
<div id="page_nav">
<jsp:include page="linear_navigation.jsp"></jsp:include>
</div>
<div id="page_container">
    <div id="left_side">
    </div>
    <div id="page_main_content">
        <h2><%= request.getAttribute("title")%></h2>
        <p><%= request.getAttribute("subTitle")%></p>
        <table class="object_table" border="1">
            <thead>
            <tr>
                <th><%= request.getAttribute("colOne")%></th>
                <th><%= request.getAttribute("colTwo")%></th>
                <th><%= request.getAttribute("colThree")%></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="num" items="${list}">
                <tr>
                    <td>
                        <a href="/about?name=${num.name}&page=planets">${num.name}</a>
                    </td>
                    <td>${num.satellites}</td>
                    <td>${num.radius}</td>
                </tr>
                </c:forEach>
                <c:forEach var="numS" items="${listS}">
                <tr>
                    <td>
                        <a href="/about?name=${numS.name}&page=stars">${numS.name}</a>
                    </td>
                    <td>${numS.distance}</td>
                    <td>${numS.radius}</td>
                </tr>
                </c:forEach>
                <c:forEach var="numG" items="${listG}">
                <tr>
                    <td>
                        <a href="/about?name=${numG.name}&page=galaxies">${numG.name}</a>
                    </td>
                    <td>${numG.distance}</td>
                    <td>${numG.type}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div id="right_side">
    </div>
</div>
<div id="page_footer">
    All Rights Reserved
</div>
</body>
</html>
