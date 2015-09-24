<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title></title>
  <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
  <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
  <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
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
      <div class="publications">

      </div>
      <div class="addPublication">
        <form>
          <div class="pubItem">
            <label for="authorName">Please enter the author's name</label><br>
            <input type="text" name="authorName" id="authorName">
          </div>
          <div class="pubItem">
            <label for="publicationTitle">Please enter the publication's title</label><br>
            <input type="text" name="publicationTitle" id="publicationTitle">
          </div>
          <div class="pubItem">
            <label for="publicationA">Please enter the annotation</label><br>
            <textarea name="publicationA" id="publicationA"></textarea>
          </div>
          <div class="pubItem">
            <label for="publicationText">Please write Your publication</label><br>
            <textarea name="publicationText" id="publicationText"></textarea>
          </div>
          <div class="pubItem">
            <label for="publicationImg">If necessary, add an image</label><br>
            <input type="file" name="publicationImg" id="publicationImg">
          </div>
        </form>
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
