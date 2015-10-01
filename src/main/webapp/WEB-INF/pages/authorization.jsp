<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
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
        <div class="reg_div">
            <form class="reg_form" id="rForm" action="/registration" method="POST" novalidate>
                <div class="reg_item">
                    <label for="user_login">Login:</label>
                    <input type="text" name="user_login" id="user_login" placeholder="Please enter your login"
                           onblur="validateLogin(2, 25, this)">
                    <div id="validateLoginResult"></div><br>
                    <span class="reg_rules" id="validateLoginRules">Only symbols: {A-z, 0-9, _}. From 2 to 25 symbols</span>
                    <div class="ghost"></div>
                </div>
                <div class="reg_item">
                    <label for="user_email">Email:</label>
                    <input type="email" name="user_email" id="user_email" placeholder="Please enter your email"
                           onblur="validateEmail(this)">
                    <div id="validateEmailResult"></div><br>
                    <span class="reg_rules" id="validateEmailRules">Only correct email with symbol {@}</span>
                    <div class="ghost"></div>
                </div>
                <div class="reg_item">
                    <label for="user_country">Country:</label>
                    <input type="text" name="user_country" id="user_country" placeholder="Please enter your country"
                           onblur="validateCountry(this)">
                    <div id="validateCountryResult"></div><br>
                    <span class="reg_rules" id="validateCountryRules">Only symbols: {A-z}</span>
                    <div class="ghost"></div>
                </div>
                <div class="reg_item">
                    <label for="user_city">City:</label>
                    <input type="text" name="user_city" id="user_city" placeholder="Please enter your city"
                           onblur="validateCity(this)">
                    <div id="validateCityResult"></div><br>
                    <span class="reg_rules" id="validateCityRules">Only symbols: {A-z}</span>
                    <div class="ghost"></div>
                </div>
                <div class="reg_item">
                    <label for="user_password">Password:</label>
                    <input type="password" name="user_password" id="user_password" placeholder="Please enter password"
                           onblur="validatePassword(this)">
                    <div id="validatePasswordResult"></div><br>
                    <span class="reg_rules" id="validatePasswordRules">At least one:[A-z,0-9,special symbol].Min 8 symbols</span>
                    <div class="ghost"></div>
                </div>
                <div class="reg_item">
                    <label for="user_password_conf">Password confirmation:</label>
                    <input type="password" name="user_password_conf" id="user_password_conf" placeholder="Please confirm password"
                           onblur="validatePasswordConfirmation(document.getElementById('user_password'), this)" >
                    <div id="validatePasswordConfResult"></div><br>
                    <span class="reg_rules" id="validatePasswordConfRules">Confirm your password from upper field.</span>
                    <div class="ghost"></div>
                </div>
                <div class="reg_item_unique">
                    <input type="submit" name="user_submit" id="user_submit" value="GO!" onclick="return validateForm(this.form);">
                </div>
            </form>
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
