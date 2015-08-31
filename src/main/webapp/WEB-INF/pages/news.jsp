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
          var $largeNews = $('#largeNews');
          var $smallNews = $('#smallNews');
          $('#oneNews1').hover(function(){
              $('#newsText').text('No TEXT1!!!');
              $('#newsImg').attr('src','/resources/images/news/DarkEnergySurvey.jpg');
              $('#newsTitle1').css('color','#ffffff');
              $('#newsTitle1').css('text-decoration','underline');
          },function(){
              $('#newsText').text('TEXT1');
              $('#newsImg').attr('src','#');
              $('#newsTitle1').css('color','#000000');
              $('#newsTitle1').css('text-decoration','none');
          });
          $('#oneNews2').hover(function(){
              $('#newsText').text('No TEXT2!!!');
              $('#newsImg').attr('src','/resources/images/news/ladeelunarorbit.jpg');
              $('#newsTitle2').css('color','#ffffff');
              $('#newsTitle2').css('text-decoration','underline');
          },function(){
              $('#newsText').text('TEXT2');
              $('#newsImg').attr('src','#');
              $('#newsTitle2').css('color','#000000');
              $('#newsTitle2').css('text-decoration','none');
          });
          $('#oneNews3').hover(function(){
              $('#newsText').text('No TEXT3!!!');
              $('#newsImg').attr('src','/resources/images/news/Sunspots.jpg');
              $('#newsTitle3').css('color','#ffffff');
              $('#newsTitle3').css('text-decoration','underline');
          },function(){
              $('#newsText').text('TEXT3');
              $('#newsImg').attr('src','#');
              $('#newsTitle3').css('color','#000000');
              $('#newsTitle3').css('text-decoration','none');
          });
          $('#oneNews4').hover(function(){
              $('#newsText').text('No TEXT4!!!');
              $('#newsImg').attr('src','/resources/images/news/blackhole.jpg');
              $('#newsTitle4').css('color','#ffffff');
              $('#newsTitle4').css('text-decoration','underline');
          },function(){
              $('#newsText').text('TEXT4');
              $('#newsImg').attr('src','#');
              $('#newsTitle4').css('color','#000000');
              $('#newsTitle4').css('text-decoration','none');
          });
          $('#oneNews5').hover(function(){
              $('#newsText').text('No TEXT5!!!');
              $('#newsImg').attr('src','/resources/images/news/tatuooin.jpg');
              $('#newsTitle5').css('color','#ffffff');
              $('#newsTitle5').css('text-decoration','underline');
          },function(){
              $('#newsText').text('TEXT5');
              $('#newsImg').attr('src','#');
              $('#newsTitle5').css('color','#000000');
              $('#newsTitle5').css('text-decoration','none');
          });
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
                    <img src="#" id="newsImg" width="100%" alt="Image"/>
                    <p id="newsText"></p>
                </div>
                <div id="smallNews">
                    <div class="oneNews" id="oneNews1" onclick="location.href='/about?name=${news0.title}&object=news';">
                        <c:url value="/about?name=${news0.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle1">${news0.title}</span></a>
                        <p class="newsA">${news0.shortText}</p>
                    </div>
                    <div class="oneNews" id="oneNews2" onclick="location.href='/about?name=${news1.title}&object=news';">
                        <c:url value="/about?name=${news1.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle2">${news1.title}</span></a>
                        <p class="newsA">${news1.shortText}</p>
                    </div>
                    <div class="oneNews" id="oneNews3" onclick="location.href='/about?name=${news2.title}&object=news';">
                        <c:url value="/about?name=${news2.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle3">${news2.title}</span></a>
                        <p class="newsA">${news2.shortText}</p>
                    </div>
                    <div class="oneNews" id="oneNews4" onclick="location.href='/about?name=${news3.title}&object=news';">
                        <c:url value="/about?name=${news3.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle4">${news3.title}</span></a>
                        <p class="newsA">${news3.shortText}</p>
                    </div>
                    <div class="oneNews" id="oneNews5" onclick="location.href='/about?name=${news4.title}&object=news';">
                        <c:url value="/about?name=${news4.title}&object=news" var="news" />
                        <a href="<c:out value="${news}" escapeXml="true" />"><span class="newsTitle" id="newsTitle5">${news4.title}</span></a>
                        <p class="newsA">${news4.shortText}</p>
                    </div>
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
