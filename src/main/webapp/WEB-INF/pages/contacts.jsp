<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Contacts | Astronomy-mvyv.rhcloud.com</title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">
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
            <div class="contactImg">
                <img src="/resources/mvyvLogo.png" width="200" />
            </div>
            <div class="contactInfo">
                <p>This site were created by Myhailo and Yuriy Valkiv.
                If you want contact us, please send you feedbacks to:</p>
                <p><a href="mailto:yurivalkiv@gmail.com">yurivalkiv@gmail.com</a></p>
                <p><a href="mailto:mishavalkiv@gmail.com">mishavalkiv@gmail.com</a></p>
                <p>We will be happy to hear your thought!</p>
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
