<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
  <title>Publications | Astronomy-mvyv.rhcloud.com</title>
  <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
  <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
  <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
  <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">
  <script>

  </script>
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
        <c:forEach var="pub" items="${publications}">
          <div id="mpContainer">
            <div id="mpImg"><img src="${pub.image}" width="150" height="100"/></div>
            <div id="mpAuthor">${pub.author}</div>
            <div id="mpDate">${pub.date}</div>
            <div id="mpTitle">${pub.title}</div>
		    <p id="mpAnnotation">${pub.annotation}</p>
		  </div>
        </c:forEach>
      </div>
      <div class="addPublication">
        <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
            <form action="/publications/newpublication" method="post" enctype="multipart/form-data">
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
              <div class="pubItem">
                <input type="submit" name="submit">
              </div>
            </form>
        </sec:authorize>
        <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
          <div class="pubBlock">
            <p>To create publication you have to be registered.</p>
            <p>
                <a href="#modal_enter">SIGN IN</a>
            </p>
            </div>
        </sec:authorize>
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
