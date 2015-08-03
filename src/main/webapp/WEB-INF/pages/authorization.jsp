<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/equal_div.js' />" ></script>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
</head>
<body>
<div id="page_global">
    <div id="page_nav">
        <jsp:include page="linear_navigation.jsp"></jsp:include>
    </div>
    <div id="page_container">
        <div class="reg_div">
            <form class="reg_form">
                <div class="reg_item">
                    <label for="user_login">Login:</label>
                    <input type="text" name="user_login" id="user_login" placeholder="Please enter your login" required>
                </div>
                <div class="reg_item">
                    <label for="user_email">Email:</label>
                    <input type="email" name="user_email" id="user_email" placeholder="Please enter your email" required>
                </div>
                <div class="reg_item">
                    <label for="user_country">Country:</label>
                    <input type="text" name="user_country" id="user_country" placeholder="Please enter your country" required pattern="^[a-zA-Z]+$">
                </div>
                <div class="reg_item">
                    <label for="user_city">City:</label>
                    <input type="text" name="user_city" id="user_city" placeholder="Please enter your city" required pattern="^[a-zA-Z]+$">
                </div>
                <div class="reg_item">
                    <label for="user_password">Password:</label>
                    <input type="password" name="user_password" id="user_password" placeholder="Please enter password" required>
                </div>
                <div class="reg_item">
                    <label for="user_password_conf">Password confirmation:</label>
                    <input type="password" name="user_password_conf" id="user_password_conf" placeholder="Please confirm password" required>
                </div>
                <div class="reg_item_unique">
                    <input type="submit" name="user_submit" id="user_submit" value="GO!">
                </div>
            </form>
        </div>
        <div class="right_side">

        </div>
    </div>
    <div id="page_footer">
        All Rights Reserved
    </div>

</div>
</body>
</html>
