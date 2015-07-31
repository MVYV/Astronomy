<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <%--<script src="<c:url value='/resources/js/jquery.js' />" ></script>--%>
    <%--<script src="<c:url value='/resources/js/getAbout.js' />" ></script>--%>
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
        <div id="about_object"><%= request.getAttribute("about")%></div>
    </div>
    <div id="right_side">
    </div>
</div>
<div id="page_footer">
    All Rights Reserved
</div>
</body>
</html>
