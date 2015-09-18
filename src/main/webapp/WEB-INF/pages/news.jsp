<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
  <title></title>
  <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
  <script src="<c:url value='/resources/js/getAbout.js' />" ></script>
  <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
  <script>
      $(document).ready(function () {
          function activeNews(i){
              $('#oneNews'+ i).css('color','#ffffff');
              $('#oneNews'+ i).css('background','rgba(245,245,245,0.1)');
              $('#oneNews'+ i).css('background','-moz-linear-gradient(top, rgba(220, 220, 220, 0.1) 0%, rgba(245, 245, 245, 0.1) 50%, rgba(220, 220, 220, 0.1) 100%)');
              $('#oneNews'+ i).css('background','-webkit-linear-gradient(top, rgba(220, 220, 220, 0.1) 0%, rgba(245, 245, 245, 0.1) 50%, rgba(220, 220, 220, 0.1) 100%)');
              $('#oneNews'+ i).css('background','-o-linear-gradient(top, rgba(220, 220, 220, 0.1) 0%, rgba(245, 245, 245, 0.1) 50%, rgba(220, 220, 220, 0.1) 100%)');
              $('#oneNews'+ i).css('background','-ms-linear-gradient(top, rgba(220, 220, 220, 0.1) 0%, rgba(245, 245, 245, 0.1) 50%, rgba(220, 220, 220, 0.1) 100%)');
              $('#oneNews'+ i).css('background','linear-gradient(top, rgba(220, 220, 220, 0.1) 0%, rgba(245, 245, 245, 0.1) 50%, rgba(220, 220, 220, 0.1) 100%)');
              $('#newsTitle'+ i).css('color','#ffffff');
              $('#newsTitle'+ i).css('text-decoration','underline');
          }
          function clearActiveNews(k){
              $('#oneNews'+ k).css('color','#000000');
              $('#oneNews'+ k).css('background','rgba(245,245,245,0.5)');
              $('#oneNews'+ k).css('background','-moz-linear-gradient(top, rgba(220, 220, 220, 0.5) 0%, rgba(245, 245, 245, 0.5) 50%, rgba(220, 220, 220, 0.5) 100%)');
              $('#oneNews'+ k).css('background','-webkit-linear-gradient(top, rgba(220, 220, 220, 0.5) 0%, rgba(245, 245, 245, 0.5) 50%, rgba(220, 220, 220, 0.5) 100%)');
              $('#oneNews'+ k).css('background','-o-linear-gradient(top, rgba(220, 220, 220, 0.5) 0%, rgba(245, 245, 245, 0.5) 50%, rgba(220, 220, 220, 0.5) 100%)');
              $('#oneNews'+ k).css('background','-ms-linear-gradient(top, rgba(220, 220, 220, 0.5) 0%, rgba(245, 245, 245, 0.5) 50%, rgba(220, 220, 220, 0.5) 100%)');
              $('#oneNews'+ k).css('background','linear-gradient(top, rgba(220, 220, 220, 0.5) 0%, rgba(245, 245, 245, 0.5) 50%, rgba(220, 220, 220, 0.5) 100%)');
              $('#newsTitle'+ k).css('color','#000000');
              $('#newsTitle'+ k).css('text-decoration','none');
          }
          var $shortText1 = $('#newsA1').text();
          var $shortText2 = $('#newsA2').text();
          var $shortText3 = $('#newsA3').text();
          var $shortText4 = $('#newsA4').text();
          var $shortText5 = $('#newsA5').text();
          var $locationNews1 = $('#oneNews1').attr('onclick');
          var $locationNews2 = $('#oneNews2').attr('onclick');
          var $locationNews3 = $('#oneNews3').attr('onclick');
          var $locationNews4 = $('#oneNews4').attr('onclick');
          var $locationNews5 = $('#oneNews5').attr('onclick');
          $('#newsText').text($shortText1);
          $('#newsImg').attr('src','/resources/images/news/DarkEnergySurvey.jpg');
          activeNews(1);
          $('#largeNews').attr('onclick',$locationNews1);
          $('#oneNews1').hover(function(){
              $('#newsText').text($shortText1);
              $('#newsImg').attr('src','/resources/images/news/DarkEnergySurvey.jpg');
              clearActiveNews(2);
              clearActiveNews(3);
              clearActiveNews(4);
              clearActiveNews(5);
              activeNews(1);
              $('#largeNews').attr('onclick',$locationNews1);
          },function(){
          });
          $('#oneNews2').hover(function(){
              $('#newsText').text($shortText2);
              $('#newsImg').attr('src','/resources/images/news/ladeelunarorbit.jpg');
              clearActiveNews(1);
              clearActiveNews(3);
              clearActiveNews(4);
              clearActiveNews(5);
              activeNews(2);
              $('#largeNews').attr('onclick',$locationNews2);
          },function(){
          });
          $('#oneNews3').hover(function(){
              $('#newsText').text($shortText3);
              $('#newsImg').attr('src','/resources/images/news/Sunspots.jpg');
              clearActiveNews(1);
              clearActiveNews(2);
              clearActiveNews(4);
              clearActiveNews(5);
              activeNews(3);
              $('#largeNews').attr('onclick',$locationNews3);
          },function(){
          });
          $('#oneNews4').hover(function(){
              $('#newsText').text($shortText4);
              $('#newsImg').attr('src','/resources/images/news/blackhole.jpg');
              clearActiveNews(1);
              clearActiveNews(2);
              clearActiveNews(3);
              clearActiveNews(5);
              activeNews(4);
              $('#largeNews').attr('onclick',$locationNews4);
          },function(){
          });
          $('#oneNews5').hover(function(){
              $('#newsText').text($shortText5);
              $('#newsImg').attr('src','/resources/images/news/tatuooin.jpg');
              clearActiveNews(1);
              clearActiveNews(2);
              clearActiveNews(3);
              clearActiveNews(4);
              activeNews(5);
              $('#largeNews').attr('onclick',$locationNews5);
          },function(){
          });
      });
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
            <div id="about_object">
                <div id="largeNews">
                    <img src="#" id="newsImg" width="100%" alt="Image"/>
                    <p id="newsText"></p>
                </div>
                <div id="smallNews">
                    <div class="oneNews" id="oneNews1" onclick="location.href='/about?name=${news0.title}&object=news';">
                        <c:url value="/about?name=${news0.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle1">${news0.title}</span></a>
                        <p class="newsA" id="newsA1">${news0.shortText}</p>
                    </div>
                    <div class="oneNews" id="oneNews2" onclick="location.href='/about?name=${news1.title}&object=news';">
                        <c:url value="/about?name=${news1.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle2">${news1.title}</span></a>
                        <p class="newsA" id="newsA2">${news1.shortText}</p>
                    </div>
                    <div class="oneNews" id="oneNews3" onclick="location.href='/about?name=${news2.title}&object=news';">
                        <c:url value="/about?name=${news2.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle3">${news2.title}</span></a>
                        <p class="newsA" id="newsA3">${news2.shortText}</p>
                    </div>
                    <div class="oneNews" id="oneNews4" onclick="location.href='/about?name=${news3.title}&object=news';">
                        <c:url value="/about?name=${news3.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle4">${news3.title}</span></a>
                        <p class="newsA" id="newsA4">${news3.shortText}</p>
                    </div>
                    <div class="oneNews" id="oneNews5" onclick="location.href='/about?name=${news4.title}&object=news';">
                        <c:url value="/about?name=${news4.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle5">${news4.title}</span></a>
                        <p class="newsA" id="newsA5">${news4.shortText}</p>
                    </div>
                </div>
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
