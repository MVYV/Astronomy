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
            margin: 0px;
            padding: 0px;
        }
        #global_navigation
        {
            width: 700px;
            height: 420px;
            border: 1px solid;
            top: 50%;
            left: 50%;
            position: absolute;
            margin-top: -210px;
            margin-left: -350px;
            overflow: hidden;
        }
        #global_menu li a
        {
            float: left;
            display: block;
        }
        .main_item, .main_item_unique
        {
            float: left;

        }
        .main_item
        {
            width: 173px;
            height: 138px;
            border: 1px dashed salmon;

        }
        .main_item_unique
        {
            width: 346px;
            height: 138px;
            border: 1px dashed salmon;
        }
    </style>
</head>
<body>
<div id="global_navigation">
    <ul id="global_menu">
        <li><div class="main_item"><a href="#">1</a></div></li>
        <li><div class="main_item"><a href="#">2</a></div></li>
        <li><div class="main_item"><a href="#">3</a></div></li>
        <li><div class="main_item"><a href="#">4</a></div></li>
        <li><div class="main_item"><a href="#">5</a></div></li>
        <li><div class="main_item_unique"><a href="#">тутоатуооиуеиупиупуоуоптуиури</a></div></li>
        <li><div class="main_item"><a href="#">6</a></div></li>
        <li><div class="main_item"><a href="#">7</a></div>
          <!--  <ul>
                <li><a href="#">Євр,,опа</a></li>
                <li><a href="#">Латинська Америка</a></li>
                <li><a href="#">Північна Америка</a></li>
            </ul> -->
        </li>
       <li><div class="main_item"><a href="#">8</a></div>
          <!--  <ul>
                <li><a href="#">Європаf</a></li>
                <li><a href="#">Латинська Америка</a></li>
                <li><a href="#">Північна Америка</a></li>
                <li><a href="#">Азія і Океанія</a></li>
                <li><a href="#">Африка</a></li>
            </ul> -->
        </li>
        <li><div class="main_item"><a href="#">9</a></div></li>
        <li><div class="main_item"><a href="#">10</a></div></li>
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
