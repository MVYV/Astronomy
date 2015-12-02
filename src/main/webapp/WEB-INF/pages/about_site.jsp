<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>About Site | Astronomy-mvyv.rhcloud.com</title>
  <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
  <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
  <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
  <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">
</head>
<body>
<div class="globalGlass">
  <div class="page_nav">
    <jsp:include page="header.jsp"></jsp:include>
  </div>
  <div class="page_container">
    <div class="left_side">
      <jsp:include page="linear_navigation.jsp"></jsp:include>
    </div>
    <div class="page_main_content">
        <div class="aboutSiteImg">
          <img src="/resources/titleLogo.png" width="500" />
        </div>
        <div class="aboutSiteInfo">
            Astronomy.rhcloud.com
            This is noncomerical site for everyone who want to know something about Universe.
            Here you can find some information about planets, stars, galaxies, etc.
        </div>
    </div>
    <div class="right_side">
      <jsp:include page="left_side_addition.jsp"></jsp:include>
    </div>
  </div>
  <div class="page_footer">
    <jsp:include page="footer.jsp"></jsp:include>
  </div>
</div>
<div class="page_global">
</div>
</body>
</html>
