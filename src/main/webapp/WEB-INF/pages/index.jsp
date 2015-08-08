<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <%--<link rel="stylesheet" type="text/css" media="screen" href="WEB-INF/pages/styles/global_navigation_style.css"/>--%>
    <link type="text/css" rel="stylesheet" href="/resources/css/global_navigation.css">
    <%--<link href="<c:url value="/resources/css/global_navigation_style.css" />" rel="stylesheet">--%>

</head>
<body>
<div id="main_global">
    <div id="global_nav">
        <div class="container_four">
            <div class="navigation_button">
                <a href="/linear_navigation">NEWS</a>
            </div>
            <div class="navigation_button">
                <a href="#">PUBLICATIONS</a>
            </div>
            <div class="navigation_button">
                <a href="/planets?page=planets">PLANETS</a>
            </div>
            <div class="navigation_button">
                <a href="/planets?page=stars">STARS</a>
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
                <a href="/planets?page=galaxies">GALAXIES</a>
            </div>
            <div class="navigation_button">
                <a href="/about?name=universe&page=universe">UNIVERSE</a>
            </div>
            <div class="navigation_button">
                <a href="#">ABOUT</a>
            </div>
            <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                <div class="navigation_button">
                    <a href="#modal_enter">SIGN IN</a>
                </div>
            </sec:authorize>
            <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
                <div class="navigation_button">
                    <a href="/j_spring_security_logout">SIGN OUT</a>
                </div>
            </sec:authorize>
        </div>
    </div>
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
