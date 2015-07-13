<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
    <script src="<c:url value='/resources/js/jquery.js' />" ></script>
    <script src="<c:url value='/resources/js/getAbout.js' />" ></script>
</head>
<body>
<%--<p id="about" name="about">${planets.about}${stars.about}</p>--%>
<p id="about">
<script id="getAbout" type="text/x-jquery-tmpl">
  <p>${planets.about}${stars.about}</p>
</script>
</p>
</body>
</html>
