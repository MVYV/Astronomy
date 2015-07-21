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
  <h2>Galaxies</h2>
  <p>Galaxies</p>
  <table class="table table-striped">
    <thead>
    <tr>
      <th>Name</th>
      <th>Distance to The Milky Way</th>
      <th>Galaxy type</th>
    </tr>
    </thead>
    <c:forEach var="num" items="${galaxiesList}">
      <%--<p>${num.name} ${num.satellites} ${num.radius}</p>--%>
    <tbody>
    <tr>
      <td>
        <a href="/about?name=${num.name}&page=galaxies">${num.name}</a>
      </td>
      <td>${num.distance}</td>
      <td>${num.type}</td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>