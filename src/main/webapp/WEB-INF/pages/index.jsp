<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <%--<link rel="stylesheet" type="text/css" media="screen" href="WEB-INF/pages/styles/global_navigation_style.css"/>--%>
    <link type="text/css" rel="stylesheet" href="/resources/css/global_navigation.css">
    <%--<link href="<c:url value="/resources/css/global_navigation_style.css" />" rel="stylesheet">--%>

</head>
<body>
<div id="main_global">
    <a href="/linear_navigation">test</a>
    <div id="global_nav">
        <div class="container_four">
            <div class="navigation_button">
                <a href="#">NEWS</a>
            </div>
            <div class="navigation_button">
                <a href="#">PUBLICATIONS</a>
            </div>
            <div class="navigation_button">
                <a href="/planets">PLANETS</a>
            </div>
            <div class="navigation_button">
                <a href="/stars">STARS</a>
            </div>
        </div>
        <div class="container_four">
            <div class="navigation_button">
                <a href="/satellites">SATELLITES</a>
            </div>
            <div class="navigation_button_unique"></div>
            <div class="navigation_button">
                <a href="/about?name=solarSystem&page=solarSystem">SOLAR SYSTEM</a>
            </div>
        </div>
        <div class="container_four">
            <div class="navigation_button">
                <a href="/galaxies">GALAXIES</a>
            </div>
            <div class="navigation_button">
                <a href="/about?name=universe&page=universe">UNIVERSE</a>
            </div>
            <div class="navigation_button">
                <a href="#">ABOUT</a>
            </div>
            <div class="navigation_button">
                <a href="#modal_enter">SIGN IN</a>
            </div>
        </div>
    </div>
</div>
<div id="modal_enter" class="enter">																																	<!-- Модальне вікно для авторизації (з'являється після натискання на кнопку "Вхід") -->
    <div><a href="#close" title="Close" class="close">X</a>
         <form id="contact_form" action="#" method="post">																												<!-- Форма авторизації -->
            	<table width="400" border="0">																															<!-- Таблиця для розміщення ел. форми -->
                    <tr>																																				<!-- Рядок -->
                        <td>
                           <input type="text" name="name" placeholder="Please enter your name:" id="user_name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" name="pass" placeholder="Please enter your password:" id="pass" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Sign in" id="sub_button"   />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" id="autorization_link">Autorization</a>
                        </td>
                    </tr>
                </table>
         </form>
    </div>
</div>


</body>
</html>
