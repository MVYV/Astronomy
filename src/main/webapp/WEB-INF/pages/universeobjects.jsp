<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <%--<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">--%>
    <%--<script src="<c:url value='/resources/js/jquery.js' />" ></script>--%>
    <%--<script src="<c:url value='/resources/js/bootstrap.min.js' />" ></script>--%>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <script src="<c:url value='/resources/js/getAbout.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/equal_div.js' />" ></script>
    <script src="<c:url value='/resources/js/sorttable.js' />" ></script>

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
        <div class="page_main_contentUnique">
            <c:forEach var="num" items="${list}">
            <div id="planetBox" class="itemBox" onclick="location.href='/about?name=${num.name}&object=planets';">
                <div class="itemImg">
                    <img src="${num.image}" alt="planet or something else"/>
                </div>
                <div class="itemProp" style="font-weight: bold; text-transform: uppercase;">
                    ${num.name}
                </div>
                <div class="itemProp">
                    <span>Number of satellites:&nbsp</span><span class="itemData">${num.satellites}</span>
                </div>
                <div class="itemProp">
                     <span>Radius:&nbsp</span><span class="itemData">${num.radius}&nbspkm</span>
                </div>
                <div class="itemProp">
                    <span>Temperature:&nbsp</span><span class="itemData">${num.temperature}&nbspK</span>
                </div>
            </div>
            </c:forEach>
            <c:forEach var="numS" items="${listS}">
                <div id="planetBox" class="itemBox" onclick="location.href='/about?name=${numS.name}&object=stars';">
                    <div class="itemImg">
                        <img src="${numS.image}" alt="planet or something else"/>
                    </div>
                    <div class="itemProp" style="font-weight: bold; text-transform: uppercase;">
                            ${numS.name}
                    </div>
                    <div class="itemProp">
                        <span>Distance to The Earth:&nbsp</span><span class="itemData">${numS.distance}&nbsply</span>
                    </div>
                    <div class="itemProp">
                        <span>Radius:&nbsp</span><span class="itemData">${numS.radius}&nbspkm</span>
                    </div>
                </div>
            </c:forEach>
            <c:forEach var="numG" items="${listG}">
                <div id="planetBox" class="itemBox" onclick="location.href='/about?name=${numG.name}&object=galaxies';">
                    <div class="itemImg">
                        <img src="${numG.image}" alt="planet or something else"/>
                    </div>
                    <div class="itemProp" style="font-weight: bold; text-transform: uppercase;">
                            ${numG.name}
                    </div>
                    <div class="itemProp">
                        <span>Distance to The Earth:&nbsp</span><span class="itemData">${numG.distance}&nbspMly</span>
                    </div>
                    <div class="itemProp">
                        <span>Type:&nbsp</span><span class="itemData">${numG.type}</span>
                    </div>
                </div>
            </c:forEach>
            <c:forEach var="numSat" items="${listSat}">
                <div id="planetBox" class="itemBox" onclick="location.href='/about?name=${numSat.name}&object=satellites';">
                    <div class="itemImg">
                        <img src="${numSat.image}" alt="planet or something else"/>
                    </div>
                    <div class="itemProp" style="font-weight: bold; text-transform: uppercase;">
                            ${numSat.name}
                    </div>
                    <div class="itemProp">
                        <span>Radius:&nbsp</span><span class="itemData">${numSat.radius}&nbspkm</span>
                    </div>
                    <div class="itemProp">
                        <span>Temperature:&nbsp</span><span class="itemData">${numSat.temperature}&nbspK</span>
                    </div>
                    <div class="itemProp">
                        <span>Planet:&nbsp</span><span class="itemData"><a href="/about?name=${numSat.planet}&object=planets" >${numSat.planet}</a></span>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="right_side">
            <c:forEach var="num" items="${newsList}">
                <div id="oneNews${num.id}" class="oneNews">
                    <c:url value="/about?name=${num.title}&page=news" var="news" />
                    <a href="<c:out value="${news}" escapeXml="true" />"> <span style="font-size: 14px; font-weight: bold;">${num.title}</span> </a>
                </div>
            </c:forEach>
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
