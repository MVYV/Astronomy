<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
</head>
<body>
<div class="footerMain">
    <div class="footerLogo">
        <img src="/resources/mvyvLogo.png" width="200">
    </div>
    <div class="footerNav">
        <table class="footerTable">
            <thead>
            <tr>
                <th class="footerLink">Основне</th>
                <th class="footerLink">Планети</th>
                <th class="footerLink">Супутники</th>
                <th class="footerLink">Зорі</th>
                <th class="footerLink">Галактики</th>
                <th class="footerLink">Інше</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="footerLink" colspan="6"></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="/">Головна</a></td>
                <td class="footerLink"><a href="/about?name=Mercury&object=planets">Меркурій</a></td>
                <td class="footerLink"><a href="/about?name=Moon&object=satellites">Місяць</a></td>
                <td class="footerLink"><a href="/about?name=Sun&object=stars">Сонце</a></td>
                <td class="footerLink"><a href="/about?name=Andromeda Galaxy&object=galaxies">Галактика Андромеда</a><br></td>
                <td class="footerLink"><a href="/about?name=solarSystem&object=solarSystem">Сонячна система</a><br></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="/news">Новини</a></td>
                <td class="footerLink"><a href="/about?name=Venus&object=planets">Венера</a></td>
                <td class="footerLink"><a href="/about?name=Phobos&object=satellites">Фобос</a></td>
                <td class="footerLink"><a href="/about?name=Aldebaran&object=stars">Альдебаран</a></td>
                <td class="footerLink"><a href="/about?name=Black Eye Galaxy&object=galaxies">Галактика Чорне Око</a><br></td>
                <td class="footerLink"><a href="/about?name=universe&object=universe">Всесвіт</a></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="/about_site">Про сайт</a><br></td>
                <td class="footerLink"><a href="/about?name=Earth&object=planets">Земля</a></td>
                <td class="footerLink"><a href="/about?name=Deimos&object=satellites">Деймос</a></td>
                <td class="footerLink"><a href="/about?name=Antares&object=stars">Антарес</a></td>
                <td class="footerLink"><a href="/about?name=Cartwheel Galaxy&object=galaxies">Галактика Колесо</a><br></td>
                <td class="footerLink"><a href="/publications">Публікації</a></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="#">Контакти</a></td>
                <td class="footerLink"><a href="/about?name=Mars&object=planets">Марс</a></td>
                <td class="footerLink"><a href="/about?name=Io&object=satellites">Іо</a></td>
                <td class="footerLink"><a href="/about?name=Arcturus&object=stars">Арктур</a></td>
                <td class="footerLink"><a href="/about?name=Cigar Galaxy&object=galaxies">Галактика Сигара</a><br></td>
                <td class="footerLink" rowspan="8"></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="#modal_enter">Увійти</a><br></td>
                <td class="footerLink"><a href="/about?name=Jupiter&object=planets">Юпітер</a></td>
                <td class="footerLink"><a href="/about?name=Europa&object=satellites">Європа</a></td>
                <td class="footerLink"><a href="/about?name=Betelgeuse&object=stars">Бетелгейзе</a></td>
                <td class="footerLink"><a href="/about?name=Comet Galaxy&object=galaxies">Галактика Комета</a><br></td>
            </tr>
            <tr>
                <td class="footerLink" rowspan="6"></td>
                <td class="footerLink"><a href="/about?name=Saturn&object=planets">Сатурн</a></td>
                <td class="footerLink"><a href="/about?name=Ganymede&object=satellites">Ганімед</a></td>
                <td class="footerLink"><a href="/about?name=Pistol Star&object=stars">Зоря Пістолет</a><br></td>
                <td class="footerLink"><a href="/about?name=Messier 81&object=galaxies">Галактика Боде</a><br></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="/about?name=Uranus&object=planets">Уран</a></td>
                <td class="footerLink"><a href="/about?name=Titan&object=satellites">Титан</a></td>
                <td class="footerLink"><a href="/about?name=Rigel&object=stars">Рігель</a></td>
                <td class="footerLink"><a href="/universeobjects?object=galaxies">Більше...</a><br></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="/about?name=Neptune&object=planets">Нептун</a></td>
                <td class="footerLink"><a href="/about?name=Mimas&object=satellites">Мімас</a></td>
                <td class="footerLink"><a href="/about?name=Sirius&object=stars">Сіріус</a></td>
                <td class="footerLink" rowspan="4"></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="/universeobjects?object=planets">Більше...</a></td>
                <td class="footerLink"><a href="/about?name=Enceladus&object=satellites">Енцелад</a></td>
                <td class="footerLink"><a href="/about?name=VY Canis Majoris&object=stars">VY Великого Пса</a><br></td>
            </tr>
            <tr>
                <td class="footerLink" rowspan="2"></td>
                <td class="footerLink"><a href="/about?name=Umbriel&object=satellites">Умбріель</a><br></td>
                <td class="footerLink"><a href="/about?name=Vega&object=stars">Вега</a></td>
            </tr>
            <tr>
                <td class="footerLink"><a href="/universeobjects?object=satellites">Більше...</a><br></td>
                <td class="footerLink"><a href="/universeobjects?object=stars">Більше...</a></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="footerHide"></div>
</body>
</html>
