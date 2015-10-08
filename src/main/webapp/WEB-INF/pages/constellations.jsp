<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <script>
        $(document).ready(function() {
            $('#cMain').hover(function()
            {
                $('.cMainUp').slideDown("normal");
            }, function()
            {
                $('.cMainUp').slideUp("normal");
            });
        });
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
        <div class="page_main_content">
            <div id="c_main_content">
            <c:forEach var="num" items="${constellations}">
                <div id="cContainer">
                    <div class="cTitle">
                        <span>${num.name}</span>
                    </div>
                    <div class="cMain" id="cMain">
                        <img src="/resources/images/constellations/orionS.jpg" width="200" height="270" />
                        <div id="slideContainer">
                            <div class="cMainUp">
                                <p>${num.area}</p>
                                <p>${num.brightestStar}</p>
                                <p>${num.nearestStar}</p>
                                <p>${num.mainStar}</p>
                                <p>${num.quadrant}</p>
                                <p>${num.family}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
        <div class="right_side">
            <jsp:include page="left_side_addition.jsp"></jsp:include>
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
