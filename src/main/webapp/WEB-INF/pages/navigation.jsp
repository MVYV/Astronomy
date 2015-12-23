<!DOCTYPE html>
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
        <li><span><a href="/home">ГОЛОВНА</a></span></li>
        <li><span><a href="#">ІНФОРМАЦІЯ</a></span>
            <ul>
                <li><a href="/contacts">КОНТАКТИ</a></li>
                <li><a href="/about_site">ПРО САЙТ</a></li>
            </ul>
        </li>
        <li><span><a href="/news">НОВИНИ</a></span></li>
        <li><span><a href="/publications">ПУБЛІКАЦІЇ</a></span></li>
        <li><span><a href="#">ТАБЛИЦІ</a></span>
            <ul>
                <li><a href="/universeobjects?object=planets">ПЛАНЕТИ</a></li>
                <li><a href="/universeobjects?object=satellites">СУПУТНИКИ</a></li>
                <li><a href="/universeobjects?object=stars">ЗОРІ</a></li>
                <li><a href="/universeobjects?object=galaxies">ГАЛАКТИКИ</a></li>
            </ul>
        </li>
        <li><span><a href="/constellations">СУЗІР'Я</a></span></li>
        <li><span><a href="/about?name=solarSystem&object=solarSystem">СОНЯЧНА СИСТЕМА</a></span></li>
        <li><span><a href="/about?name=universe&object=universe">ВСЕСВІТ</a></span></li>
        <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
            <li><span><a href="#modal_enter" title="">УВІЙТИ</a></span></li>
        </sec:authorize>
        <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
            <li><span><a href="#"><%= request.getAttribute("username")%></a></span>
                <ul>
                    <li><a href="/profile">ПРОФІЛЬ</a></li>
                    <li><a href="/j_spring_security_logout">ВИЙТИ</a></li>
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
                        <input type="text" id="j_username" name="j_username" placeholder="Будь-ласка введіть ім'я:" value="" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" id="j_password" name="j_password" placeholder="Будь-ласка введіть пароль:" value="" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Увійти" id="sub_button"   />
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="/authorization" id="authorization_link" class="modalA">Зареєструватися</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>
