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
//      $(document).ready(function () {
//        $(function () {
//          var $blocks2 = $('.rotationRadio1 .rRadio1');
//          var timeout2 = 3000;
//          var index2 = 1;
//          var k = 0;
//          $blocks2.eq(k).addClass('radioActive1');
//          setInterval(function () {
//            $blocks2.removeClass('radioActive1');
//            $blocks2.eq(index2++).addClass('radioActive1');
//            if (index2 == $blocks2.size()) {
//              index2 = 0;
//            }
//          }, timeout2);
//        });
//        $(function () {
//          var $blocks3 = $('.rotationObject1');
//          var timeout3 = 3000;
//          var index3 = 1;
//          var m = 0;
//          $blocks3.eq(m).addClass('rotationObjectA1');
//          setInterval(function () {
//            $blocks3.fadeOut('slow');
//            $blocks3.eq(index3++).fadeIn('slow');
//            if (index3 == $blocks3.size()) {
//              index3 = 0;
//            }
//          }, timeout3);
//        });
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
    <p>${title}</p>
  </div>
  <div class="rotationRadio">
    <div class="rRadio" id="radio1"></div>
    <div class="rRadio" id="radio2"></div>
    <div class="rRadio" id="radio3"></div>
    <div class="rRadio" id="radio4"></div>
    <div class="rRadio" id="radio5"></div>
  </div>
  <c:forEach var="star" items="${stars}">
    <div class="rotationObject" id="rotationObject${star.id}">
      <div class="rObjProp">
        <img src="${star.imageSmall}"/>
      </div>
      <div class="rObjProp">
        <p>${star.name}</p>
      </div>
      <div class="rObjProp">
        <p>Distance to the Earth:${star.distance} <c:if test="${star.name == 'Sun'}"><c:out value="km" /></c:if><c:if test="${star.name != 'Sun'}"><c:out value="ly" /></c:if></p>
      </div>
      <div class="rObjProp">
        <p>Radius:${star.radius} <c:if test="${star.name == 'Sun'}"><c:out value="km" /></c:if><c:if test="${star.name != 'Sun'}"><c:out value="Rs" /></c:if></p>
      </div>
    </div>
  </c:forEach>
</div>

<div id="rotationMain1">
  <div class="rotationTitle1">
    <p>${title}</p>
  </div>
  <div class="rotationRadio1">
    <div class="rRadio1" id="radioo1"></div>
    <div class="rRadio1" id="radioo2"></div>
    <div class="rRadio1" id="radioo3"></div>
    <div class="rRadio1" id="radioo4"></div>
    <div class="rRadio1" id="radioo5"></div>
  </div>
<c:forEach var="planet" items="${planets}">
  <div class="rotationObject1" id="rotationObject${planet.id}">
    <div class="rObjProp1">
      <img src="${planet.imageSmall}"/>
    </div>
    <div class="rObjProp1">
      <p>${planet.name}</p>
    </div>
    <div class="rObjProp1">
      <p>Distance to the Earth:${planet.temperature} ly</p>
    </div>
    <div class="rObjProp1">
      <p>Radius:${planet.radius} Rs</p>
    </div>
  </div>
</c:forEach>
</div>
</body>
</html>