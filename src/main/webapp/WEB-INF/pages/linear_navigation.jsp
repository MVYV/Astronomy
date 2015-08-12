<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="/resources/css/global_navigation.css">
</head>
<body>
<div id="ln_container">
<ul id="nav">
    <li><a href="/" title="Return to main page">HOME</a></li>
    <li><a href="#" title="About us">ABOUT</a>
        <ul>
            <li><a href="#">CONTACTS</a></li>
            <li><a href="#">ABOUT SITE</a></li>
        </ul>
    </li>
    <li><a href="#">NEWS</a></li>
    <li><a href="#" title="">PUBLICATIONS</a></li>
    <li><a href="#">TABLES</a>
        <ul>
            <li><a href="/planets?page=planets">PLANETS</a></li>
            <li><a href="/satellites">SATELLITES</a></li>
            <li><a href="/planets?page=stars">STARS</a></li>
            <li><a href="/planets?page=galaxies">GALAXIES</a></li>
        </ul>
    </li>
    <li><a href="/about?name=solarSystem&page=solarSystem" title="">SOLAR SYSTEM</a></li>
    <li><a href="/about?name=universe&page=universe" title="">UNIVERSE</a></li>
    <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
        <li><a href="#modal_enter" title="">SIGN IN</a></li>
    </sec:authorize>
    <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
        <li><a href="#"><%= request.getAttribute("username")%></a>
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
