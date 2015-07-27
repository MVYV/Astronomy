<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:include page="linear_navigation.jsp"></jsp:include>
<div class="container">
  <h2>Galaxies</h2>
  <p>Galaxies</p>
  <table class="table table-striped">
    <thead>
    <tr>
      <th>Name</th>
      <th>Temperature</th>
      <th>Satellite of</th>
    </tr>
    </thead>
    <c:forEach var="num" items="${satellitesList}">
      <tbody>
      <tr>
        <td>
          <a href="/about?name=${num.name}&page=satellites">${num.name}</a>
        </td>
        <td>${num.temperature}</td>
        <td>${num.planet_name}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
