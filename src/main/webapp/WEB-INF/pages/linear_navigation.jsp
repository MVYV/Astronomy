<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="/resources/css/global_navigation.css">
    <script src="<c:url value='/resources/js/nav_script.js' />" ></script>
</head>
<body>
<div id="nav">

    <ul id="menu">
        <li><span><a href="/">HOME</a></span></li>
        <li><span><a href="#">ABOUT</a></span>
            <ul>
                <li><a href="#">CONTACTS</a></li>
                <li><a href="#">ABOUT SITE</a></li>
            </ul>
        </li>
        <li><span><a href="#">NEWS</a></span>
        <li><span><a href="#">PUBLICATIONS</a></span>
        <li><span><a href="#">TABLES</a></span>
            <ul>
                <li><a href="/planets?page=planets">PLANETS</a></li>
                <li><a href="/satellites">SATELLITES</a></li>
                <li><a href="/planets?page=stars">STARS</a></li>
                <li><a href="/planets?page=galaxies">GALAXIES</a></li>
            </ul>
        </li>
        <li><span><a href="/about?name=solarSystem&page=solarSystem">SOLAR SYSTEM</a></span>
        <li><span><a href="/about?name=universe&page=universe">UNIVERSE</a></span>
        <li><span><a href="#">SIGN IN</a></span>
    </ul>
</div>
<div id="modal_enter" class="enter">																																	<!-- Модальне вікно для авторизації (з'являється після натискання на кнопку "Вхід") -->
    <div><a href="#close" title="Close" class="close">X</a>
        <form id="contact_form" action="<c:url value='/j_spring_security_check' />" method="post">																												<!-- Форма авторизації -->
            <table width="400" border="0">																															<!-- Таблиця для розміщення ел. форми -->
                <tr>																																				<!-- Рядок -->
                    <td>
                        <input type="text" id="j_username" name="j_username" placeholder="Please enter your name:" value="" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" id="j_password" name="j_password" placeholder="Please enter your password:" value="" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Sign in" id="sub_button"   />
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="/authorization" id="authorization_link">Authorization</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>
