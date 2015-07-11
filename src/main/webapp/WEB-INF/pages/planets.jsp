<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:forEach var="num" items="${planetsList}">
    <p>${num.name} ${num.satellites} ${num.radius}</p>
</c:forEach>
</body>
</html>
