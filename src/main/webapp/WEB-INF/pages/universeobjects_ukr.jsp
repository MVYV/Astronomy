<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>${siteTitle} | Astronomy-mvyv.rhcloud.com</title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <script src="<c:url value='/resources/js/getAbout.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/sorttable.js' />" ></script>

</head>
<body>
<div class="globalGlass">
    <div class="page_nav">
        <jsp:include page="header_ukr.jsp"></jsp:include>
    </div>
    <div class="page_container">
        <div class="left_side">
            <jsp:include page="navigation.jsp"></jsp:include>
        </div>
        <div class="page_main_contentUnique">
            <c:forEach var="num" items="${list}">
                <div id="planetBox" class="itemBox">
                    <div class="itemImg">
                        <img src="${num.image}" alt="planet or something else"/>
                    </div>
                    <div class="itemProp" style="font-weight: bold; text-transform: uppercase;">
                            ${num.nameUkr}
                    </div>
                    <div class="itemProp">
                        <span>Число супутників:&nbsp</span><span class="itemData">${num.satellites}</span>
                    </div>
                    <div class="itemProp">
                        <span>Радіус:&nbsp</span><span class="itemData">${num.radius}&nbspкм</span>
                    </div>
                    <div class="itemProp">
                        <span>Температура:&nbsp</span><span class="itemData">${num.temperature}&nbspK</span>
                    </div>
                    <div class="itemProp" style="padding-top: 9px;">
                        <div class="objLink">
                            <a href="/about_ukr?name=${num.name}&object=planets">Читати</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <c:forEach var="numS" items="${listS}">
                <div id="planetBox" class="itemBox">
                    <div class="itemImg">
                        <img src="${numS.image}" alt="planet or something else"/>
                    </div>
                    <div class="itemProp" style="font-weight: bold; text-transform: uppercase;">
                            ${numS.name}
                    </div>
                    <div class="itemProp">
                        <span>Дистанція до Землі:&nbsp</span><span class="itemData">${numS.distance}&nbsp<c:if test="${numS.name == 'Sun'}"><c:out value="км" /></c:if><c:if test="${numS.name != 'Sun'}"><c:out value="св. р." /></c:if></span>
                    </div>
                    <div class="itemProp">
                        <span>Радіус:&nbsp</span><span class="itemData">${numS.radius}&nbsp<c:if test="${numS.name == 'Sun'}"><c:out value="км" /></c:if><c:if test="${numS.name != 'Sun'}"><c:out value="Rс" /></c:if></span>
                    </div>
                    <div class="itemProp">
                        <span>Сузір'я:&nbsp</span><span class="itemData">${numS.constellationUkr}</span>
                    </div>
                    <div class="itemProp" style="padding-top: 9px;">
                        <div class="objLink">
                            <a href="/about_ukr?name=${numS.name}&object=stars">Читати</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <c:forEach var="numG" items="${listG}">
                <div id="planetBox" class="itemBox">
                    <div class="itemImg">
                        <img src="${numG.image}" alt="planet or something else"/>
                    </div>
                    <div class="itemProp" style="font-weight: bold; text-transform: uppercase;">
                            ${numG.nameUkr}
                    </div>
                    <div class="itemProp">
                        <span>Дистанція до Землі:&nbsp</span><span class="itemData">${numG.distance}&nbspмлн. св. р.</span>
                    </div>
                    <div class="itemProp">
                        <span>Тип:&nbsp</span><span class="itemData">${numG.typeUkr}</span>
                    </div>
                    <div class="itemProp" style="padding-top: 9px;">
                        <div class="objLink">
                            <a href="/about_ukr?name=${numG.name}&object=galaxies">Читати</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <c:forEach var="numSat" items="${listSat}">
                <div id="planetBox" class="itemBox">
                    <div class="itemImg">
                        <img src="${numSat.image}" alt="planet or something else"/>
                    </div>
                    <div class="itemProp" style="font-weight: bold; text-transform: uppercase;">
                            ${numSat.nameUkr}
                    </div>
                    <div class="itemProp">
                        <span>Радіус:&nbsp</span><span class="itemData">${numSat.radius}&nbspкм</span>
                    </div>
                    <div class="itemProp">
                        <span>Температура:&nbsp</span><span class="itemData">${numSat.temperature}&nbspK</span>
                    </div>
                    <div class="itemProp">
                        <span>Планета:&nbsp</span><span class="itemData"><a href="/about?name=${numSat.planet}&object=planets" class="itemLink">${numSat.planetUkr}</a></span>
                    </div>
                    <div class="itemProp" style="padding-top: 9px;">
                        <div class="objLink">
                            <a href="/about_ukr?name=${numSat.name}&object=satellites">Читати</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="right_side">
            <jsp:include page="left_side_addition.jsp"></jsp:include>
        </div>
    </div>
    <div class="page_footer">
        <jsp:include page="footer_ukr.jsp"></jsp:include>
    </div>
</div>
<div class="page_global">
</div>
</body>
</html>
