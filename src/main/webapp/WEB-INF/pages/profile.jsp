<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <link type="text/css" rel="stylesheet" href="/resources/css/pages.css">
    <script src="<c:url value='/resources/js/getAbout.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script src="<c:url value='/resources/js/formValidator.js' />" ></script>
    <script>
        $(document).ready(function () {
            var $profileChange = $('#profileChange');
            var $lowerBox = $('#lowerBox');
            var $loaderBox = $('#loaderBox');
            $profileChange.click(function ()
            {
                if ($lowerBox.is(":hidden"))
                {
                    $loaderBox.show();
                    setTimeout(function(){$loaderBox.hide()}, 3000);
                    setTimeout(function(){$lowerBox.slideDown("slow");}, 3000);

                }
                else
                {
                    $lowerBox.hide();
                }
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
        <div class="reg_div">
            <div id="upperBox">
                <table class="userLoginData" border="0" id="userData">
                    <tr>
                        <td class="userLD">Login:</td>
                        <td class="userLD"><%= request.getAttribute("login")%></td>
                    </tr>
                    <tr>
                        <td class="userLD">E-mail:</td>
                        <td class="userLD"><%= request.getAttribute("email")%></td>
                    </tr>
                    <tr>
                        <td class="userLD">Country:</td>
                        <td class="userLD"><%= request.getAttribute("country")%></td>
                    </tr>
                    <tr>
                        <td class="userLD">City:</td>
                        <td class="userLD"><%= request.getAttribute("city")%></td>
                    </tr>
                </table>
                <input type="button" value="Change My Profile" name="profileChange" class="profileChange" id="profileChange">
            </div>
            <div id="loaderBox">
                <img src="/resources/images/form_loader.gif">
            </div>
            <div id="lowerBox">
                <form class="reg_form" id="rForm" action="/profile/change" method="POST" novalidate>
                    <div class="reg_item">
                        <label for="user_login">New login:</label>
                        <input type="text" name="user_login" id="user_login" placeholder="Please enter your new login"
                               onblur="validateLogin(2, 25, this)" value="<%= request.getAttribute("login")%>">
                        <div id="validateLoginResult"></div><br>
                        <span class="reg_rules" id="validateLoginRules">Only symbols: {A-z, 0-9, _}. From 2 to 25 symbols</span>
                        <div class="ghost"></div>
                    </div>
                    <div class="reg_item">
                        <label for="user_email">New email:</label>
                        <input type="email" name="user_email" id="user_email" placeholder="Please enter your new email"
                               onblur="validateEmail(this)" value="<%= request.getAttribute("email")%>">
                        <div id="validateEmailResult"></div><br>
                        <span class="reg_rules" id="validateEmailRules">Only correct email with symbol {@}</span>
                        <div class="ghost"></div>
                    </div>
                    <div class="reg_item">
                        <label for="user_country">Country:</label>
                        <input type="text" name="user_country" id="user_country" placeholder="Please enter your country"
                               onblur="validateCountry(this)" value="<%= request.getAttribute("country")%>">
                        <div id="validateCountryResult"></div><br>
                        <span class="reg_rules" id="validateCountryRules">Only symbols: {A-z}</span>
                        <div class="ghost"></div>
                    </div>
                    <div class="reg_item">
                        <label for="user_city">City:</label>
                        <input type="text" name="user_city" id="user_city" placeholder="Please enter your city"
                               onblur="validateCity(this)" value="<%= request.getAttribute("city")%>">
                        <div id="validateCityResult"></div><br>
                        <span class="reg_rules" id="validateCityRules">Only symbols: {A-z}</span>
                        <div class="ghost"></div>
                    </div>
                    <div class="reg_item">
                        <label for="user_password">New password:</label>
                        <input type="password" name="user_password" id="user_password" placeholder="Please enter new password"
                               onblur="validatePassword(this)" value="<%= request.getAttribute("password")%>">
                        <div id="validatePasswordResult"></div><br>
                        <span class="reg_rules" id="validatePasswordRules">At least one:[A-z,0-9,special symbol].Min 8 symbols</span>
                        <div class="ghost"></div>
                    </div>
                    <div class="reg_item">
                        <label for="user_password_conf">Password confirmation:</label>
                        <input type="password" name="user_password_conf" id="user_password_conf" placeholder="Please confirm new password"
                               onblur="validatePasswordConfirmation(document.getElementById('user_password'), this)" value="<%= request.getAttribute("password")%>">
                        <div id="validatePasswordConfResult"></div><br>
                        <span class="reg_rules" id="validatePasswordConfRules">Enter your new password once again</span>
                        <div class="ghost"></div>
                    </div>
                    <div class="reg_item_unique">
                        <input type="submit" name="user_submit" id="user_submit" value="Change Profile" onclick="return validateForm(this.form);">
                    </div>
                </form>

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
