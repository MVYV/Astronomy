<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Інформація | Information | Astronomy-mvyv.rhcloud.com</title>
  <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
  <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
  <script src="<c:url value='/resources/js/stopBox.js' />" ></script>
  <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
  <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">
  <style type="text/css">
    .langLink1, .langLink2, .langLink3, .langLink4
    {
      font-size: 18px;
    }
  </style>
</head>
<body>
  <div class="bodyBox">
    <div id="langBox">
      <div id="ukr">
        <p>
          Українська версія сайту працює в тестовому режимі.<br/>
          Інформаційне наповнення, у порівнянні з англомовною версією, є неповним.<br/><br/>
          Просимо вибачення за тимчасові незручності.
        </p>
        <div class="langLinkBox">
          <a href="/" class="langLink1">Англійська версія</a>
        </div>
        <div class="langLinkBox">
          <a href="/index_ukr" class="langLink2">Українська версія</a>
        </div>
      </div>

      <div id="eng">
        <p>
          Ukrainian version of the site is in the process of developing and running in beta.<br/>
          The contents, compared with the English version is incomplete.<br/><br/>
          We apologize for any inconvenience.
        </p>
        <div class="langLinkBox">
          <a href="/" class="langLink3">English version</a>
        </div>
        <div class="langLinkBox">
          <a href="/index_ukr" class="langLink4">Ukrainian version</a>
        </div>
      </div>
    </div>
    <div id="langFooter">
      <p>MVYV-Developing</p>
    </div>
  </div>
</body>
</html>