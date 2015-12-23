<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home | Astronomy-mvyv.rhcloud.com</title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
    <script src="<c:url value='/resources/js/stopBox.js' />" ></script>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">
    <script type="text/javascript">

    </script>
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
                <div class="homeInfo">
                    <span class="homeBoxTitle">Planets</span>
                    <p>The term planet is ancient, with ties to history, science, mythology, and religion.
                        Several planets in the Solar System can be seen with the naked eye.</p>
                    <p>The eight planets of the Solar System:</p>
                    <ul>
                        <li><b>The terrestrial planets</b><br/>
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Mercury, Venus, Earth</i>, and <i>Mars</i></span></li>
                        <li><b>The giant planets</b><br/>
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Jupiter</i> and <i>Saturn</i> (gas giants)</span><br/>
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Uranus</i> and <i>Neptune</i> (ice giants)</span></li>
                    </ul>
                </div>
            </div>
            <div class="homeBox" id="homeBox2" onclick="location.href='/universeobjects?object=stars';">
                <div class="homeInfo">
                    <span class="homeBoxTitle">Stars</span>
                    <p>A star is a luminous sphere of plasma, held together by its own gravity. The nearest star to Earth is the Sun.
                        Other stars are visible from Earth during the night, appearing as a multitude of fixed luminous points
                        in the sky due to their immense distance from Earth. Historically, the most prominent stars
                        were grouped into constellations and asterisms, and the brightest stars gained proper names.
                    </p>
                </div>
            </div>
            <div class="homeBox" id="homeBox3" onclick="location.href='/universeobjects?object=satellites';">
                <div class="homeInfo">
                    <span class="homeBoxTitle">Satellites</span>
                    <p>A natural satellite or moon is a celestial body that orbits another body (a planet, dwarf planet, or small Solar System body),
                        which is called its primary, and that is not artificial. In the Solar System there are 173
                        known natural satellites orbiting within 6 planetary satellite systems.
                        In addition, several other planetary-mass objects are known to have satellite systems,
                        including those of the IAU-listed dwarf planets, the moons of Pluto, Haumea and the Eris–Dysnomia systems.</p>
                </div>
            </div>
            <div class="homeBox" id="homeBox4" onclick="location.href='/universeobjects?object=galaxies';">
                <div class="homeInfo">
                    <span class="homeBoxTitle">Galaxies</span>
                    <p>A galaxy is a gravitationally bound system of stars, stellar remnants, interstellar gas and dust, and dark matter.
                        Galaxies are categorized according to their visual morphology, including elliptical, spiral, and irregular.
                        Many galaxies are thought to have black holes at their active centers.
                        The Milky Way's central black hole, known as Sagittarius A*, has a mass four million times greater than our own Sun.</p>
                </div>
            </div>
            <div class="homeBox" id="homeBox5" onclick="location.href='/constellations';">
                <div class="homeInfo">
                    <span class="homeBoxTitle">Constellations</span>
                    <p>In modern astronomy, a constellation is a specific area of the celestial sphere as defined by the International Astronomical Union (IAU).
                        These areas had their origins in Western-traditional asterisms from which the constellations take their names.
                        There are 88 officially recognized constellations, covering the entire sky.
                        Thus, any given point in a celestial coordinate system can unambiguously be assigned to a constellation.
                        It is usual in astronomy to give the constellation in which a given object is found along with its coordinates
                        in order to convey a rough idea in which part of the sky it is located.</p>
                </div>
            </div>
            <div class="homeBox" id="homeBox6" onclick="location.href='/about?name=solarSystem&object=solarSystem';">
                <div class="homeInfo">
                    <span class="homeBoxTitle">Solar System</span>
                    <p>The Solar System comprises the Sun and the planetary system that orbits it, either directly or indirectly.
                        Of those objects that orbit the Sun directly, the largest eight are the planets,
                        with the remainder being significantly smaller objects, such as dwarf planets and small
                        Solar System bodies such as comets and asteroids.
                        Of those that orbit the Sun indirectly, two are larger than the smallest planet.</p>
                </div>
            </div>
            <div class="homeBox" id="homeBox7" onclick="location.href='/about?name=universe&object=universe';">
                <div class="homeInfo">
                    <span class="homeBoxTitle">Universe</span>
                    <p>The Universe is all of time and space and its contents.
                        The Universe includes planets, stars, galaxies, the contents of intergalactic space,
                        the smallest subatomic particles, and all matter and energy.
                        The observable universe is about 28 billion parsecs (91 billion light-years) in diameter at the present time.
                        The size of the whole Universe is not known and may be infinite.
                        Observations and the development of physical theories have led to inferences about the
                        composition and evolution of the Universe.</p>
                </div>
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
