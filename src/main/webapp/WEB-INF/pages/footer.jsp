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

    </div>
    <div class="footerNav">
    <table class="footerTable">
        <thead>
        <tr>
            <th class="footerLink">General</th>
            <th class="footerLink">Planets</th>
            <th class="footerLink">Satellites</th>
            <th class="footerLink">Stars</th>
            <th class="footerLink">Galaxies</th>
            <th class="footerLink">Other</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="footerLink" colspan="6"></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="/">Home</a></td>
            <td class="footerLink"><a href="/about?name=Mercury&object=planets">Mercury</a></td>
            <td class="footerLink"><a href="/about?name=Moon&object=satellites">Moon</a></td>
            <td class="footerLink"><a href="/about?name=Sun&object=stars">Sun</a></td>
            <td class="footerLink"><a href="/about?name=Andromeda Galaxy&object=galaxies">Andromeda Galaxy</a><br></td>
            <td class="footerLink"><a href="/about?name=solarSystem&object=solarSystem">Solar System</a><br></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="/news">News</a></td>
            <td class="footerLink"><a href="/about?name=Venus&object=planets">Venus</a></td>
            <td class="footerLink"><a href="/about?name=Phobos&object=satellites">Phobos</a></td>
            <td class="footerLink"><a href="/about?name=Aldebaran&object=stars">Aldebaran</a></td>
            <td class="footerLink"><a href="/about?name=Black Eye Galaxy&object=galaxies">Black Eye Galaxy</a><br></td>
            <td class="footerLink"><a href="/about?name=universe&object=universe">Universe</a></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="/about_site">About site</a><br></td>
            <td class="footerLink"><a href="/about?name=Earth&object=planets">Earth</a></td>
            <td class="footerLink"><a href="/about?name=Deimos&object=satellites">Deimos</a></td>
            <td class="footerLink"><a href="/about?name=Antares&object=stars">Antares</a></td>
            <td class="footerLink"><a href="/about?name=Cartwheel Galaxy&object=galaxies">Cartwheel Galaxy</a><br></td>
            <td class="footerLink"><a href="#">Publications</a></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="#">Contacts</a></td>
            <td class="footerLink"><a href="/about?name=Mars&object=planets">Mars</a></td>
            <td class="footerLink"><a href="/about?name=Io&object=satellites">Io</a></td>
            <td class="footerLink"><a href="/about?name=Arcturus&object=stars">Arcturus</a></td>
            <td class="footerLink"><a href="/about?name=Cigar Galaxy&object=galaxies">Cigar Galaxy</a><br></td>
            <td class="footerLink" rowspan="8"></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="#modal_enter">Sign in</a><br></td>
            <td class="footerLink"><a href="/about?name=Jupiter&object=planets">Jupiter</a></td>
            <td class="footerLink"><a href="/about?name=Europa&object=satellites">Europa</a></td>
            <td class="footerLink"><a href="/about?name=Betelgeuse&object=stars">Betelgeuse</a></td>
            <td class="footerLink"><a href="/about?name=Comet Galaxy&object=galaxies">Comet Galaxy</a><br></td>
        </tr>
        <tr>
            <td class="footerLink" rowspan="6"></td>
            <td class="footerLink"><a href="/about?name=Saturn&object=planets">Saturn</a></td>
            <td class="footerLink"><a href="/about?name=Ganymede&object=satellites">Ganymede</a></td>
            <td class="footerLink"><a href="/about?name=Pistol Star&object=stars">Pistol Star</a><br></td>
            <td class="footerLink"><a href="/about?name=Messier 81&object=galaxies">Messier 81</a><br></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="/about?name=Uranus&object=planets">Uranus</a></td>
            <td class="footerLink"><a href="/about?name=Titan&object=satellites">Titan</a></td>
            <td class="footerLink"><a href="/about?name=Rigel&object=stars">Rigel</a></td>
            <td class="footerLink"><a href="/universeobjects?object=galaxies">See more...</a><br></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="/about?name=Neptune&object=planets">Neptune</a></td>
            <td class="footerLink"><a href="/about?name=Mimas&object=satellites">Mimas</a></td>
            <td class="footerLink"><a href="/about?name=Sirius&object=stars">Sirius</a></td>
            <td class="footerLink" rowspan="4"></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="/universeobjects?object=planets">See more...</a></td>
            <td class="footerLink"><a href="/about?name=Enceladus&object=satellites">Enceladus</a></td>
            <td class="footerLink"><a href="/about?name=VY Canis Majoris&object=stars">VY Canis Majoris</a><br></td>
        </tr>
        <tr>
            <td class="footerLink" rowspan="2"></td>
            <td class="footerLink"><a href="/about?name=Umbriel&object=satellites">Umbriel</a><br></td>
            <td class="footerLink"><a href="/about?name=Vega&object=stars">Vega</a></td>
        </tr>
        <tr>
            <td class="footerLink"><a href="/universeobjects?object=satellites">See more...</a><br></td>
            <td class="footerLink"><a href="/universeobjects?object=stars">See more...</a></td>
        </tr>
        </tbody>
    </table>
    </div>
</div>

<div class="footerHide"></div>
</body>
</html>
