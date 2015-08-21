<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
  <title></title>
  <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
  <script src="<c:url value='/resources/js/getAbout.js' />" ></script>
  <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
  <script src="<c:url value='/resources/js/equal_div.js' />" ></script>

</head>
<body>
<div class="page_global">
  <div class="page_nav">
    <jsp:include page="linear_navigation.jsp"></jsp:include>
  </div>
  <div class="page_container">
    <div class="page_main_content">
      <div id="about_object">
        <c:forEach var="num" items="${newsList}">
          <c:url value="/about?name=${num.title}&page=news" var="news" />
          <a href="<c:out value="${news}" escapeXml="true" />"> <p>${num.title}</p> </a>
          <p>${num.shortText}</p>
        </c:forEach>
      </div>
    </div>
    <div class="right_side">

    </div>
  </div>


  <div class="page_footer">
    All Rights Reserved
  </div>
</div>

</body>
</html>
