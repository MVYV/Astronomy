<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
  <title></title>
  <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
  <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
  <script>
    $(document).ready(function () {
      $(function () {
        var $blocks = $('.rotationRadio .rRadio');
        var timeout = 3000;
        var index = 1;
        var j = 0;
        $blocks.eq(j).addClass('radioActive');
        setInterval(function () {
          $blocks.removeClass('radioActive');
          $blocks.eq(index++).addClass('radioActive');
          if (index == $blocks.size()) {
            index = 0;
          }
        }, timeout);
      });
      $(function () {
        var $blocks1 = $('.rotationObject');
        var timeout1 = 3000;
        var index1 = 1;
        var i = 0;
        $blocks1.eq(i).addClass('rotationObjectA');
        setInterval(function () {
          $blocks1.fadeOut('slow');
          $blocks1.eq(index1++).fadeIn('slow');
          if (index1 == $blocks1.size()) {
            index1 = 0;
          }
        }, timeout1);
      });
      var $radio1 = $('#radio1');
      var $radio2 = $('#radio2');
      var $radio3 = $('#radio3');
      var $radio4 = $('#radio4');
      var $radio5 = $('#radio5');
      function hideRotationObject(j){
        $('#rotationObject'+ j).fadeOut('slow');
      }
      function showRotationObject(m){
        $('#rotationObject'+ m).fadeIn('slow');
      }
      $radio1.click(function(){
        showRotationObject(1);
        hideRotationObject(2);
        hideRotationObject(3);
        hideRotationObject(4);
        hideRotationObject(5);
      });
      $radio2.click(function(){
        hideRotationObject(1);
        showRotationObject(2);
        hideRotationObject(3);
        hideRotationObject(4);
        hideRotationObject(5);
      });
      $radio3.click(function(){
        hideRotationObject(1);
        hideRotationObject(2);
        showRotationObject(3);
        hideRotationObject(4);
        hideRotationObject(5);
      });
      $radio4.click(function(){
        hideRotationObject(1);
        hideRotationObject(2);
        hideRotationObject(3);
        showRotationObject(4);
        hideRotationObject(5);
      });
      $radio5.click(function(){
        hideRotationObject(1);
        hideRotationObject(2);
        hideRotationObject(3);
        hideRotationObject(4);
        showRotationObject(5);
      });
    });
  </script>
</head>
<body>
<div id="rotationMain">
  <div class="rotationTitle">
    <p>STARS</p>
  </div>
  <div class="rotationRadio">
    <div class="rRadio" id="radio1"></div>
    <div class="rRadio" id="radio2"></div>
    <div class="rRadio" id="radio3"></div>
    <div class="rRadio" id="radio4"></div>
    <div class="rRadio" id="radio5"></div>
  </div>
  <c:forEach var="star1" items="${stars}">
  <c:set var="foo" value="${star1.id}+1"></c:set>
  <div class="rotationObject" id="rotationObject${foo}">
    <div class="rObjProp">
      <img src="/resources/images/stars/Sirius/siriusSmall.jpg"/>
    </div>
    <div class="rObjProp">
      <p>${star1.name}</p>
    </div>
    <div class="rObjProp">
      <p>Distance to the Earth:${star1.distance} ly</p>
    </div>
    <div class="rObjProp">
      <p>Radius:${star1.radius} Rs</p>
    </div>
  </div>
  </c:forEach>
  <%--<div class="rotationObject" id="rotationObject2">--%>
    <%--<div class="rObjProp">--%>
      <%--<img src="/resources/images/stars/Sun/sunSmall.jpg"/>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>${star2.name}</p>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>Distance to the Earth:${star2.distance} km</p>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>Radius:${star2.radius} km</p>--%>
    <%--</div>--%>
  <%--</div>--%>
  <%--<div class="rotationObject" id="rotationObject3">--%>
    <%--<div class="rObjProp">--%>
      <%--<img src="/resources/images/stars/Antares/antaresSmall.jpg"/>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>${star3.name}</p>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>Distance to the Earth:${star3.distance} ly</p>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>Radius:${star3.radius} Rs</p>--%>
    <%--</div>--%>
  <%--</div>--%>
  <%--<div class="rotationObject" id="rotationObject4">--%>
    <%--<div class="rObjProp">--%>
      <%--<img src="/resources/images/stars/Rigel/rigelSmall.jpg"/>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>${star4.name}</p>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>Distance to the Earth:${star4.distance} ly</p>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>Radius:${star5.radius} Rs</p>--%>
    <%--</div>--%>
  <%--</div>--%>
  <%--<div class="rotationObject" id="rotationObject5">--%>
    <%--<div class="rObjProp">--%>
      <%--<img src="/resources/images/stars/Betelgeuse/betelgeuseSmall.jpg"/>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>${star5.name}</p>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>Distance to the Earth:${star5.distance} ly</p>--%>
    <%--</div>--%>
    <%--<div class="rObjProp">--%>
      <%--<p>Radius:${star5.radius} Rs</p>--%>
    <%--</div>--%>
  <%--</div>--%>
</div>
</body>
</html>