<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" media="screen" href="WEB-INF/pages/styles/global_navigation_style.css"/>
    <%--<link type="text/css" rel="stylesheet" href="/styles/global_navigation_style.css">--%>
    <style type="text/css">
        #global_menu, #global_menu ul
        {
            list-style:none;
            margin:0px;
            padding:0px;
            width:240px;
        }
    </style>
</head>
<body>
<div id="global_navigation">
    <ul id="global_menu">
        <div class="main_item"><li><a href="#">Головна</a></li></div>
        <div class="main_item"><li><a href="#">Новини</a></li></div>
        <div class="main_item"><li><a href="#">Клуби</a>
          <!--  <ul>
                <li><a href="#">Європа</a></li>
                <li><a href="#">Латинська Америка</a></li>
                <li><a href="#">Північна Америка</a></li>
            </ul> -->
        </li></div>
       <div class="main_item"> <li><a href="#">Збірні</a>
          <!--  <ul>
                <li><a href="#">Європа</a></li>
                <li><a href="#">Латинська Америка</a></li>
                <li><a href="#">Північна Америка</a></li>
                <li><a href="#">Азія і Океанія</a></li>
                <li><a href="#">Африка</a></li>
            </ul> -->
        </li></div>
        <div class="main_item"><li><a href="#">Про сайт</a></li></div>
        <div class="main_item"><li><a href="#">Вхід</a></li></div>
    </ul>
</div>



<?php
/**
 * Created by PhpStorm.
 * User: Вальків
 * Date: 19.06.2015
 * Time: 19:47
 */?>
</body>
</html>
