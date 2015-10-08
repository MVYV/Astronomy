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
                <li><a href="/about_site">ABOUT SITE</a></li>
            </ul>
        </li>
        <li><span><a href="/news">NEWS</a></span></li>
        <li><span><a href="/publications">PUBLICATIONS</a></span></li>
        <li><span><a href="#">TABLES</a></span>
            <ul>
                <li><a href="/universeobjects?object=planets">PLANETS</a></li>
                <li><a href="/universeobjects?object=satellites">SATELLITES</a></li>
                <li><a href="/universeobjects?object=stars">STARS</a></li>
                <li><a href="/universeobjects?object=galaxies">GALAXIES</a></li>
            </ul>
        </li>
        <li><span><a href="/constellations">CONSTELLATIONS</a></span></li>
        <li><span><a href="/about?name=solarSystem&object=solarSystem">SOLAR SYSTEM</a></span></li>
        <li><span><a href="/about?name=universe&object=universe">UNIVERSE</a></span></li>
        <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
            <li><span><a href="#modal_enter" title="">SIGN IN</a></span></li>
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
            <li><span><a href="#"><%= request.getAttribute("username")%></a></span>
                <ul>
                    <li><a href="/profile">MY PROFILE</a></li>
                    <li><a href="/j_spring_security_logout">SIGN OUT</a></li>
                </ul>
            </li>
        </sec:authorize>
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
