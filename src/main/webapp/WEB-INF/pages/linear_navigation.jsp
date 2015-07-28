<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <li><a href="#" title="">TABLES</a>
        <ul>
            <li><a href="/planets">PLANETS</a></li>
            <li><a href="/satellites">SATELLITES</a></li>
            <li><a href="/stars">STARS</a></li>
            <li><a href="/galaxies">GALAXIES</a></li>
        </ul>
    </li>
    <li><a href="/about?name=solarSystem&page=solarSystem" title="">SOLAR SYSTEM</a></li>
    <li><a href="/about?name=universe&page=universe" title="">UNIVERSE</a></li>
    <li><a href="#modal_enter" title="">SIGN IN</a></li>
</ul>
</div>
<div id="modal_enter" class="enter">																																	<!-- Модальне вікно для авторизації (з'являється після натискання на кнопку "Вхід") -->
    <div><a href="#close" title="Close" class="close">X</a>
        <form id="contact_form" action="/login" method="post">																												<!-- Форма авторизації -->
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
