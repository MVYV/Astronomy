<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <script>
        (function($){
            $.fn.extend({
                MyPagination: function(options) {
                    var defaults = {
                        height: 400,
                        fadeSpeed: 400
                    };
                    var options = $.extend(defaults, options);
                    var objContent = $(this);
                    var fullPages = new Array();
                    var subPages = new Array();
                    var height = 0;
                    var lastPage = 1;
                    var paginatePages;
                    init = function() {
                        objContent.children().each(function(i){
                            if (height + this.clientHeight > options.height) {
                                fullPages.push(subPages);
                                subPages = new Array();
                                height = 0;
                            }
                            height += this.clientHeight;
                            subPages.push(this);
                        });
                        if (height > 0) {
                            fullPages.push(subPages);
                        }
                        $(fullPages).wrap("<div class='page'></div>");
                        objContent.children().css('display','none');
                        paginatePages = objContent.children();
                        showPage(lastPage);
                        showPagination($(paginatePages).length);
                    };
                    updateCounter = function(i) {
                        $('#page_number').html(i);
                    };
                    showPage = function(page) {
                        i = page - 1;
                        if (paginatePages[i]) {
                            $(paginatePages[lastPage]).css('display','none');
                            lastPage = i;
                            $(paginatePages[lastPage]).css('display','block');
                            updateCounter(page);
                        }
                    };
                    showPagination = function(numPages) {
                        var pagins = '';
                        for (var i = 1; i <= numPages; i++) {
                            pagins += '<li><a href="#" onclick="showPage(' + i + '); return false;">' + i + '</a></li>';
                        }
                        $('.pagination li:first-child').after(pagins);
                    };
                    init();
                    $('.pagination #prev').click(function() {
                        showPage(lastPage);
                    });
                    $('.pagination #next').click(function() {
                        showPage(lastPage+2);
                    });
                }
            });
        })(jQuery);
        jQuery(window).load(function() {
            $('#c_main_content').MyPagination({height: 3750, fadeSpeed: 400});
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
                <c:set var="name" value="${num.name}"/>
                <c:if test="${num.name == 'Boötes'}"><c:set var="name" value="Bootes"/></c:if>
                <div id="cContainer" onclick="location.href='/about?name=${name}&object=constellations';">
                    <div class="cTitle">
                        <span>${num.name}</span>
                    </div>
                    <div class="cMain" id="cMain">
                        <img src="${num.image}" width="200" height="270" />
                        <div id="slideContainer">
                            <div class="cMainUp" id="cMainUp${num.id}">
                                <p><span>Area:</span>&nbsp${num.area}</p>
                                <c:forEach var="stars" items="${starsList}">
                                    <c:if test="${num.nearestStar == stars.name}">
                                        <c:set var="nameStar" value="${num.nearestStar}"/>
                                        <c:set var="nameN" value="${num.nearestStar}"/>
                                    </c:if>
                                    <c:if test="${num.brightestStar == stars.name}">
                                        <c:set var="nameStarB" value="${num.brightestStar}"/>
                                        <c:set var="nameB" value="${num.brightestStar}"/>
                                    </c:if>
                                </c:forEach>
                                <c:choose>
                                    <c:when test="${num.brightestStar == nameB}">
                                        <p><span>Brightest star:</span>&nbsp${num.brightestStar}</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p><span>Brightest star:</span>&nbsp${num.brightestStar}</p>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose>
                                    <c:when test="${num.nearestStar == nameN}">
                                        <p><span>Nearest star:</span>&nbsp${num.nearestStar}</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p><span>Nearest star:</span>&nbsp${num.nearestStar}</p>
                                    </c:otherwise>
                                </c:choose>
                                <p><span>Main stars:</span>&nbsp${num.mainStar}</p>
                                <p><span>Quadrant:</span>&nbsp${num.quadrant}</p>
                                <p><span>Family:</span>&nbsp${num.family}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
            <hr />
            <div class="pagination">
                <ul>
                    <li><a href="#" id="prev" class="prevnext">«</a></li>
                    <li><a href="#" id="next" class="prevnext">»</a></li>
                </ul>
                <br />
                <div id="page_number" class="page_number">1</div>
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
