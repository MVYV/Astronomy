<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
  <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
  <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">
  <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
  <script src="<c:url value='/resources/js/sorttable.js' />" ></script>
</head>
<body>
<jsp:include page="linear_navigation.jsp"></jsp:include>
<div class="title_box">
  <p class="main_title">Satellites</p>
  <p class="sub_title">Planets' satellites</p>
</div>
<table class="sortable" border="0">
  <thead>
  <tr>
    <th>Name</th>
    <th>Temperature (K)</th>
    <th>Planet</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="num" items="${satellitesList}">
    <tr class="obj_select" id="planets" onclick="location.href='/about?name=${num.name}&page=satellites';">
      <td class="data_cell">${num.name}</td>
      <td class="data_cell">${num.temperature}</td>
      <td class="data_cell">${num.planet}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
