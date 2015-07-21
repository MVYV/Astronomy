<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title></title>
  <%--<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">--%>
  <%--<script src="<c:url value='/resources/js/jquery.js' />" ></script>--%>
  <%--<script src="<c:url value='/resources/js/bootstrap.min.js' />" ></script>--%>
</head>
<body>
<div class="container">
  <h2>Stars</h2>
  <p>Stars in The Milky Way</p>
  <table class="table table-striped">
    <thead>
    <tr>
      <th>Name</th>
      <th>Distance to The Earth</th>
      <th>Radius</th>
    </tr>
    </thead>
    <c:forEach var="num" items="${starsList}">
      <%--<p>${num.name} ${num.satellites} ${num.radius}</p>--%>
    <tbody>
    <tr>
      <td>
        <a href="/about?name=${num.name}&page=stars">${num.name}</a>
      </td>
      <td>${num.distance}</td>
      <td>${num.radius}</td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
