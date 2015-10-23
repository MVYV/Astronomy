<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
</head>
<body>
<div class="globalGlass">
    <div class="page_nav">
        <jsp:include page="header.jsp"></jsp:include>
    </div>
    <div class="page_container">
        <div class="left_side">
            <jsp:include page="linear_navigation.jsp"></jsp:include>
        </div>
        <div class="page_main_contentU">
            <div class="homeBox" id="homeBox1" onclick="location.href='/universeobjects?object=planets';">
                <p class="homeBoxTitle">Planets</p>
                <p>The term planet is ancient,<br/>
                    with ties to history, science,<br/>
                    mythology, and religion.<br/>
                    Several planets in the Solar System<br/>
                    can be seen with the naked eye.</p>
                <p>The eight planets of the Solar System:</p>
                <ul>
                    <li><b>The terrestrial planets</b><br/>
                        <span><i>Mercury, Venus, Earth</i>, and <i>Mars</i></span></li>
                    <li><b>The giant planets</b><br/>
                        <span><i>Jupiter</i> and <i>Saturn</i> (gas giants)</span><br/>
                        <span><i>Uranus</i> and <i>Neptune</i> (ice giants)</span></li>
                    </ul>
            </div>
            <div class="homeBox" id="homeBox2" onclick="location.href='/universeobjects?object=stars';">
                <p class="homeBoxTitle">Stars</p>
                <p>A star is a luminous sphere of plasma<br/>
                    held together by its own gravity.<br/>
                    The nearest star to Earth is the Sun.<br/>
                    Other stars are visible from Earth<br/>
                    during the night,<br/>
                    appearing as a multitude<br/>
                    of fixed luminous points<br/>
                    in the sky due to their immense<br/>
                    distance from Earth.<br/>
                    Historically, the most prominent stars<br/>
                    were grouped into constellations and asterisms,<br/>
                    and the brightest stars gained proper names.
                </p>
            </div>
            <div class="homeBox" id="homeBox3" onclick="location.href='/universeobjects?object=satellites';">
                <p class="homeBoxTitle">Satellites</p>
                <p>A natural satellite or moon is a celestial<br/>
                    body that orbits another body<br/>
                    (a planet, dwarf planet,<br/>
                    or small Solar System body),<br/>
                    which is called its primary,<br/>
                    and that is not artificial.<br/>
                    In the Solar System there are 173<br/>
                    known natural satellites orbiting within<br/>
                    6 planetary satellite systems.<br/>
                    In addition, several other<br/>
                    planetary-mass objects are known to have<br/>
                    satellite systems, including those of the IAU-listed dwarf planets,<br/>
                    the moons of Pluto, Haumea and the Eris–Dysnomia systems.</p>
            </div>
            <div class="homeBox" id="homeBox4" onclick="location.href='/universeobjects?object=galaxies';">
                <p class="homeBoxTitle">Galaxies</p>
                <p>A galaxy is a gravitationally bound system<br/>
                    of stars, stellar remnants,<br/>
                    interstellar gas and dust, and dark matter.<br/>
                    Galaxies are categorized<br/>
                    according to their visual morphology,<br/>
                    including elliptical, spiral, and irregular.<br/>
                    Many galaxies are thought to have<br/>
                    black holes at their active centers.<br/>
                    The Milky Way's central black hole,<br/>
                    known as Sagittarius A*,<br/>
                    has a mass four million times greater than our own Sun.</p>
            </div>
            <div class="homeBox" id="homeBox5" onclick="location.href='/constellations';">
                <p class="homeBoxTitle">Constellations</p>
                <p>In modern astronomy, a constellation<br/>
                    is a specific area of the celestial sphere<br/>
                    as defined by the International Astronomical Union (IAU).<br/>
                    These areas had their origins in Western-traditional<br/>
                    asterisms from which the constellations take their names.<br/>
                    There are 88 officially recognized constellations,<br/>
                    covering the entire sky.<br/>
                    Thus, any given point in a celestial coordinate system<br/>
                    can unambiguously be assigned to a constellation.<br/>
                    It is usual in astronomy to give the constellation<br/>
                    in which a given object is found along with its coordinates<br/>
                    in order to convey a rough idea in which part of the sky it is located.</p>
            </div>
            <div class="homeBox" id="homeBox6" onclick="location.href='/about?name=solarSystem&object=solarSystem';">
                <p class="homeBoxTitle">Solar System</p>
                <p>The Solar System comprises the Sun<br/>
                    and the planetary system<br/>
                    that orbits it, either directly or indirectly.<br/>
                    Of those objects that orbit the Sun directly,<br/>
                    the largest eight are the planets,<br/>
                    with the remainder being significantly smaller objects,<br/>
                    such as dwarf planets and small<br/>
                    Solar System bodies such as comets and asteroids.<br/>
                    Of those that orbit the Sun indirectly,<br/>
                    two are larger than the smallest planet.</p>
            </div>
            <div class="homeBox" id="homeBox7" onclick="location.href='/about?name=universe&object=universe';">
                <p class="homeBoxTitle">Universe</p>
                <p>The Universe is<br/>
                    all of time and space and its contents.<br/>
                    The Universe includes planets, stars, galaxies,<br/>
                    the contents of intergalactic space,<br/>
                    the smallest subatomic particles, and all matter and energy.<br/>
                    The observable universe is about 28 billion parsecs<br/>
                    (91 billion light-years) in diameter at the present time.<br/>
                    The size of the whole Universe is not known and may be infinite.<br/>
                    Observations and the development of physical theories<br/>
                    have led to inferences about the<br/>
                    composition and evolution of the Universe.</p>
            </div>
            <%--<div class="homeBox">--%>

            <%--</div>--%>
        </div>
    </div>
    <div class="page_footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
<div class="page_global">
</div>
</body>
</html>
