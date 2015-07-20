<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <%--<script src="<c:url value='/resources/js/jquery.js' />" ></script>--%>
    <%--<script src="<c:url value='/resources/js/getAbout.js' />" ></script>--%>
</head>
<body>
<p>${planet.about}</p>
<p><%= request.getAttribute("about")%></p>
</body>
</html>
