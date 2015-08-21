<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/global_navigation.css">
    <%--<script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>--%>
    <script src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js?ver=1.3.2' />" ></script>
    <script src="<c:url value='/resources/js/jquery.cycle.all.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery.cycle.all.min.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery.easing.1.1.1.js' />" ></script>

    <%--<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js?ver=1.3.2'></script>--%>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#globalBox').cycle({
                fx: 'fade',
                speed: 1000,
                timeout: 7000
            });
        });
    </script>

</head>
<body>
<div id="glassBox">
    <div id="glassContainer">
        <div id="glassTitle">
            <span id="gTitle">ASTRONOMY</span>
        </div>
        <div id="glassEnter">
            <div id="gEnter">
                <a href="#" id="glassRef">Enter Astronomy</a>
            </div>
        </div>
    </div>
    <div id="glassFooter">
        <table id="glassTable" border="0" style="font-family: Verdana;">
            <tr>
                <th class="glassLink" id="glassL"><a href="/planets?page=planets">Planets</a></th>
                <th class="glassLink"><a href="/satellites">Satellites</a></th>
                <th class="glassLink"><a href="/planets?page=stars">Stars</a></th>
                <th class="glassLink"><a href="/planets?page=galaxies">Galaxies</a></th>
                <th class="glassLink"><a href="/about?name=solarSystem&page=solarSystem">Solar System</a></th>
                <th class="glassLink"><a href="/about?name=universe&page=universe">Universe</a></th>
                <th class="glassLink"><a href="">Sign In</a></th>
            </tr>
        </table>
    </div>
</div>
<div id="globalBox">
    <img src="/resources/images/main_img/main_img.jpg" class="globalChUnique"/>
    <img src="/resources/images/main_img/main_img1.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img2.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img3.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img4.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img5.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img6.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img7.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img8.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img9.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img10.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img11.jpg" class="globalCh"/>


<%--<div id="modal_enter" class="enter">																																	<!-- Модальне вікно для авторизації (з'являється після натискання на кнопку "Вхід") -->--%>
    <%--<div><a href="#close" title="Close" class="close">X</a>--%>
         <%--<form id="contact_form" action="<c:url value='/j_spring_security_check' />" method="post">																												<!-- Форма авторизації -->--%>
            <%--<input type="text" id="j_username" name="j_username" placeholder="Please enter your name:" value="" />--%>
            <%--<input type="password" id="j_password" name="j_password" placeholder="Please enter your password:" value="" />--%>
            <%--<input type="submit" value="Sign in" id="sub_button"   />--%>
            <%--<a href="/authorization" id="authorization_link">Authorization</a>--%>
         <%--</form>--%>
    <%--</div>--%>
<%--</div>--%>
</div>

<%--<script type="text/javascript">--%>
        <%--/*var imageBox = ["/resources/images/main_img/main_img.jpg",--%>
                        <%--"/resources/images/main_img/main_img1.jpg",--%>
                        <%--"/resources/images/main_img/main_img2.jpg",--%>
                        <%--"/resources/images/main_img/main_img3.jpg",--%>
                        <%--"/resources/images/main_img/main_img4.jpg",--%>
                        <%--"/resources/images/main_img/main_img5.jpg",--%>
                        <%--"/resources/images/main_img/main_img6.jpg",--%>
                        <%--"/resources/images/main_img/main_img7.jpg",--%>
                        <%--"/resources/images/main_img/main_img8.jpg",--%>
                        <%--"/resources/images/main_img/main_img9.jpg",--%>
                        <%--"/resources/images/main_img/main_img10.jpg",--%>
                        <%--"/resources/images/main_img/main_img11.jpg"];*/--%>
        <%--var imgNum = 12;--%>
        <%--var interval = 5000;--%>
        <%--var time = 10;--%>
        <%--var i = 0;--%>
        <%--var timeout;--%>
        <%--var opacity = 100;--%>

        <%--function changeImg() {--%>
            <%--opacity--;--%>
            <%--var j = i + 1;--%>
            <%--var currentImg = 'img' + i;--%>
            <%--if (i == imgNum) j = 1;--%>
            <%--var nextImg = 'img' + j;--%>
            <%--document.getElementById(currentImg).style.opacity=opacity/100;--%>
            <%--document.getElementById(currentImg).style.filter='alpha(opacity='+opacity+')';--%>
            <%--document.getElementById(nextImg).style.opacity=(100-opacity)/100;--%>
            <%--document.getElementById(nextImg).style.filter='alpha(opacity='+(100-opacity)+')';--%>
            <%--timeout = setTimeout("changeImg()", time);--%>
            <%--if (opacity==1) {--%>
                <%--opacity = 100;--%>
                <%--clearTimeout(timeout);--%>
            <%--}--%>
        <%--}--%>

        <%--setInterval (function() {i++; if (i>imgNum) i=1; changeImg();}, interval);--%>
<%--</script>--%>
</body>
</html>
