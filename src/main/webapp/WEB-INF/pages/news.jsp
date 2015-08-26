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
  <script>
      $(document).ready(function () {
          var $oneNews = $('#oneNews');
          var $largeNews = $('#largeNews');
          var $smallNews = $('#smallNews');
      });

  </script>

</head>
<body>
<div class="globalGlass">
    <div class="page_nav">

    </div>
    <div class="page_container">
        <div class="left_side">
            <jsp:include page="linear_navigation.jsp"></jsp:include>
        </div>
        <div class="page_main_content">
            <div id="about_object">
                <div id="largeNews">
                    <img src="#" alt="text" />
                </div>
                <div id="smallNews">
                <c:forEach var="num" items="${newsList}">
                    <div id="oneNews">
                    <c:url value="/about?name=${num.title}&page=news" var="news" />
                    <a href="<c:out value="${news}" escapeXml="true" />"> <span style="font-size: 14px; font-weight: bold;">${num.title}</span> </a>
                    <p style="margin-bottom: 0px;">${num.shortText}</p>
                    </div>
                </c:forEach>
                </div>
            </div>
        </div>
        <div class="right_side">

        </div>
    </div>


    <div class="page_footer">
        All Rights Reserved
    </div>

</div>
<div class="page_global">
</div>

</body>
</html>
