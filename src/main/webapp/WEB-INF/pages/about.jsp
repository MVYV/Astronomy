<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <link type="text/css" rel="stylesheet" href="/resources/css_pirobox/style_1/style.css"/>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery.min.js' />"></script>
    <script src="<c:url value='/resources/js/jquery-ui-1.8.2.custom.min.js' />"></script>
    <script src="<c:url value='/resources/js/pirobox_extended.js' />"></script>
    <script src="<c:url value='/resources/js/sorttable.js' />" ></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $().piroBox_ext({
                piro_speed : 700,
                bg_alpha : 0.5,
                piro_scroll : true
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
            <div id="about_object">
                <div id="objectInfo">
                    <p class="objectInfoTitle"><%= request.getAttribute("name")%></p>
                    <div style="<%= request.getAttribute("hiddenNewsImage")%>">
                        <img class="objectInfoImg" src="<%= request.getAttribute("mainImage")%>" width="400" height="225">
                    </div>
                    <p class="objectInfoText"><%= request.getAttribute("about")%></p>
                </div>
            </div>
                <div class="imageGallery" style="<%= request.getAttribute("hiddenImages")%>">
                    <c:forEach var="num" items="${objectImages}">
                        <ul>
                            <li><a href="/resources/images${num}" rel="gallery"  class="pirobox_gall" title="${name}"><img src="/resources/imagesSmall${num}"  /></a></li>
                        </ul>
                    </c:forEach>
                </div>
                <div class="title_box" style="<%= request.getAttribute("hide")%>">
                    <p>See also:</p>
                    <p class="sub_title"><%= request.getAttribute("subTitle")%></p>
                </div>
                <table class="sortable" border="0" style="<%= request.getAttribute("hide")%>">
                    <thead>
                    <tr>
                        <th><%= request.getAttribute("colOne")%></th>
                        <th><%= request.getAttribute("colTwo")%></th>
                        <th><%= request.getAttribute("colThree")%></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="num" items="${list}">
                        <tr class="obj_select" id="planets" onclick="location.href='/about?name=${num.name}&object=satellites';">
                            <td class="data_cell">${num.name}</td>
                            <td class="data_cell">${num.temperature}</td>
                            <td class="data_cell">${num.planet}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
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
