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
    <script type="text/javascript">
        function change_picture() {
            if (!document.getElementById('stars') && !document.getElementById('galaxies'))
            {
                document.getElementById('page_global').style.backgroundImage = 'url("/resources/images/planets.jpg")';
            }
            else if (!document.getElementById('planets') && !document.getElementById('galaxies'))
            {
                document.getElementById('page_global').style.backgroundImage = 'url("/resources/images/stars.jpg")';
            }

            else if (!document.getElementById('planets') && !document.getElementById('stars'))
            {
                document.getElementById('page_global').style.backgroundImage = 'url("/resources/images/galaxies.jpg")';

            }
            else
            {}
        }
    </script>
</head>
<body onload="change_picture()">
<div id="page_global">
<div id="page_nav">
<jsp:include page="linear_navigation.jsp"></jsp:include>
</div>
<div id="page_container">
    <div id="left_side">
    </div>
    <div id="page_main_content">
        <h2><%= request.getAttribute("title")%></h2>
        <p><%= request.getAttribute("subTitle")%></p>
        <table class="object_table" border="0">
            <thead>
            <tr>
                <th><%= request.getAttribute("colOne")%></th>
                <th><%= request.getAttribute("colTwo")%></th>
                <th><%= request.getAttribute("colThree")%></th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="num" items="${list}">
                <tr class="obj_select" id="planets" onclick="location.href='/about?name=${num.name}&page=planets';">
                    <td class="data_cell">${num.name}</td>
                    <td class="data_cell">${num.satellites}</td>
                    <td class="data_cell">${num.radius}</td>
                </tr>
                </c:forEach>
                <c:forEach var="numS" items="${listS}">
                <tr class="obj_select" id="stars" onclick="location.href='/about?name=${numS.name}&page=stars';">
                    <td class="data_cell">${numS.name}</td>
                    <td class="data_cell">${numS.distance}</td>
                    <td class="data_cell">${numS.radius}</td>
                </tr>
                </c:forEach>
                <c:forEach var="numG" items="${listG}">
                <tr class="obj_select" id="galaxies" onclick="location.href='/about?name=${numG.name}&page=galaxies';">
                    <td class="data_cell">${numG.name}</td>
                    <td class="data_cell">${numG.distance}</td>
                    <td class="data_cell">${numG.type}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div id="right_side">
    </div>
</div>
<div id="page_footer">
    All Rights Reserved
</div>
</div>
</body>
</html>
