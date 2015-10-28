<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/global_navigation.css">
    <%--<script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>--%>
    <script src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js?ver=1.3.2' />" ></script>
    <script src="<c:url value='/resources/js/jquery.cycle.all.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery.cycle.all.min.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery.easing.1.1.1.js' />" ></script>

    <%--<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js?ver=1.3.2'></script>--%>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#globalBox').cycle({
                fx: 'fade',
                speed: 1000,
                timeout: 4000
            });
        });
    </script>

</head>
<body>
<div id="glassBox">
    <div id="glassContainer">
        <div id="glassTitle">
            <span id="gTitle">ASTRONOMY</span>
        </div>
        <div id="glassEnter">
            <div id="gEnter">
                <a href="/home" id="glassRef">Enter Astronomy</a>
            </div>
        </div>
    </div>
    <div id="glassFooter">
        <table id="glassTable" border="0" style="font-family: Verdana;">
            <tr>
                <th class="glassLink" id="glassL"><a href="/universeobjects?object=planets">Planets</a></th>
                <th class="glassLink"><a href="/universeobjects?object=satellites">Satellites</a></th>
                <th class="glassLink"><a href="/universeobjects?object=stars">Stars</a></th>
                <th class="glassLink"><a href="/universeobjects?object=galaxies">Galaxies</a></th>
                <th class="glassLink"><a href="/about?name=solarSystem&object=solarSystem">Solar System</a></th>
                <th class="glassLink"><a href="/about?name=universe&object=universe">Universe</a></th>
                <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                    <th class="glassLink"><a href="#modal_enter">Sign In</a></th>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
                    <th class="glassLink"><a href="/j_spring_security_logout">Sign Out</a></th>
                </sec:authorize>
            </tr>
        </table>
    </div>
</div>
<div id="globalBox">
    <img src="/resources/images/main_img/main_img.png" class="globalChUnique"/>
    <img src="/resources/images/main_img/main_img1.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img2.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img3.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img4.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img5.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img6.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img7.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img8.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img9.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img10.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img11.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img12.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img13.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img14.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img15.jpg" class="globalCh"/>
    <img src="/resources/images/main_img/main_img16.jpg" class="globalCh"/>
</div>


<div id="modal_enter" class="enter">																																	<!-- ╨Ь╨╛╨┤╨░╨╗╤М╨╜╨╡ ╨▓╤Ц╨║╨╜╨╛ ╨┤╨╗╤П ╨░╨▓╤В╨╛╤А╨╕╨╖╨░╤Ж╤Ц╤Ч (╨╖'╤П╨▓╨╗╤П╤Ф╤В╤М╤Б╤П ╨┐╤Ц╤Б╨╗╤П ╨╜╨░╤В╨╕╤Б╨║╨░╨╜╨╜╤П ╨╜╨░ ╨║╨╜╨╛╨┐╨║╤Г "╨Т╤Е╤Ц╨┤") -->
    <div><a href="#close" title="Close" class="close">X</a>
        <form id="contact_form" action="<c:url value='/j_spring_security_check' />" method="post">																												<!-- ╨д╨╛╤А╨╝╨░ ╨░╨▓╤В╨╛╤А╨╕╨╖╨░╤Ж╤Ц╤Ч -->
            <table width="400" border="0">																															<!-- ╨в╨░╨▒╨╗╨╕╤Ж╤П ╨┤╨╗╤П ╤А╨╛╨╖╨╝╤Ц╤Й╨╡╨╜╨╜╤П ╨╡╨╗. ╤Д╨╛╤А╨╝╨╕ -->
                <tr>																																				<!-- ╨а╤П╨┤╨╛╨║ -->
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
