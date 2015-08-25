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
    <script type="text/javascript">
        function change_picture() {
            if (!document.getElementById('stars') && !document.getElementById('galaxies'))
            {
                document.getElementById('page_global_changer').style.backgroundImage = 'url("/resources/images/planets.jpg")';
            }
            else if (!document.getElementById('planets') && !document.getElementById('galaxies'))
            {
                document.getElementById('page_global_changer').style.backgroundImage = 'url("/resources/images/stars.jpg")';
            }

            else if (!document.getElementById('planets') && !document.getElementById('stars'))
            {
                document.getElementById('page_global_changer').style.backgroundImage = 'url("/resources/images/galaxies.jpg")';

            }
            else
            {}
        }
    </script>
</head>
<body onload="change_picture()">
<div class="globalGlass">
    <div class="page_nav">

    </div>
    <div class="page_container">
        <div class="left_side">
            <jsp:include page="linear_navigation.jsp"></jsp:include>
        </div>
        <div class="page_main_contentUnique">
            <c:forEach var="num" items="${list}">
            <div id="planetBox" class="itemBox">
                <div class="itemImg">
                    <img src="#" alt="planet or something else"/>
                </div>
                <div class="itemProp">
                    ${num.name}
                </div>
                <div class="itemProp">
                    <span>Number of satellites:</span>${num.satellites}
                </div>
                <div class="itemProp">
                     <span>Radius:</span>${num.radius}
                </div>
            </div>
            </c:forEach>
            <%--<div class="title_box">--%>
                <%--<p class="main_title"><%= request.getAttribute("title")%></p>--%>
                <%--<p class="sub_title"><%= request.getAttribute("subTitle")%></p>--%>
            <%--</div>--%>
            <%--<table class="sortable" border="0">--%>
                <%--<thead>--%>
                <%--<tr>--%>
                    <%--<th><%= request.getAttribute("colOne")%></th>--%>
                    <%--<th><%= request.getAttribute("colTwo")%></th>--%>
                    <%--<th><%= request.getAttribute("colThree")%></th>--%>
                <%--</tr>--%>
                <%--</thead>--%>
                <%--<tbody>--%>
                <%--<c:forEach var="num" items="${list}">--%>
                    <%--<tr class="obj_select" id="planets" onclick="location.href='/about?name=${num.name}&page=planets';">--%>
                        <%--<td class="data_cell">${num.name}</td>--%>
                        <%--<td class="data_cell">${num.satellites}</td>--%>
                        <%--<td class="data_cell">${num.radius}</td>--%>
                    <%--</tr>--%>
                <%--</c:forEach>--%>
                <%--<c:forEach var="numS" items="${listS}">--%>
                    <%--<tr class="obj_select" id="stars" onclick="location.href='/about?name=${numS.name}&page=stars';">--%>
                        <%--<td class="data_cell">${numS.name}</td>--%>
                        <%--<td class="data_cell">${numS.distance}</td>--%>
                        <%--<td class="data_cell">${numS.radius}</td>--%>
                    <%--</tr>--%>
                <%--</c:forEach>--%>
                <%--<c:forEach var="numG" items="${listG}">--%>
                    <%--<tr class="obj_select" id="galaxies" onclick="location.href='<c:out value="${'/about?name=${numG.name}&page=galaxies'}" escapeXml="true" />';">--%>
                        <%--<td class="data_cell">${numG.name}</td>--%>
                        <%--<td class="data_cell">${numG.distance}</td>--%>
                        <%--<td class="data_cell">${numG.type}</td>--%>
                    <%--</tr>--%>
                <%--</c:forEach>--%>
                <%--</tbody>--%>
            <%--</table>--%>
        </div>
        <div class="right_side">
            <c:forEach var="num" items="${newsList}">
                <c:url value="/about?name=${num.title}&page=news" var="news" />
                <a href="<c:out value="${news}" escapeXml="true" />"> <p>${num.title}</p> </a>
            </c:forEach>
        </div>
    </div>
    <div class="page_footer">
        All Rights Reserved
    </div>
</div>
<div id="page_global_changer">
</div>
</body>
</html>
