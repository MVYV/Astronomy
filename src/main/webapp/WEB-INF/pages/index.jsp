<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/global_navigation.css">
    <script src="<c:url value='/resources/js/jquery-1.11.3.js' />" ></script>
    <script>
        $(document).ready(function () {
            var imageBox = new Array();
            imageBox[0] = "/resources/images/main_img/main_img.jpg";
            imageBox[1] = "/resources/images/main_img/main_img1.jpg";
            imageBox[2] = "/resources/images/main_img/main_img2.jpg";
            imageBox[3] = "/resources/images/main_img/main_img3.jpg";
            imageBox[4] = "/resources/images/main_img/main_img4.jpg";
            imageBox[5] = "/resources/images/main_img/main_img5.jpg";
            imageBox[6] = "/resources/images/main_img/main_img6.jpg";
            imageBox[7] = "/resources/images/main_img/main_img7.jpg";
            imageBox[8] = "/resources/images/main_img/main_img8.jpg";
            imageBox[9] = "/resources/images/main_img/main_img9.jpg";
            imageBox[10] = "/resources/images/main_img/main_img10.jpg";
            imageBox[11] = "/resources/images/main_img/main_img11.jpg";

            var $globalBox = $('#globalBox');
            n = 0;
            t = 800;
            play = setInterval("chImg(0)", 5000);
            function chImg(num) {
                if (num!=0) n = num-2;
                $globalBox.fadeOut(t, function() {    //для картинок
                    $(this).css('background', imageBox[n]).fadeIn(t);
                });


                n++;
                if (n>=imgs.length) n=0;
            }


        });
    </script>


</head>
<body>
<div id="globalBox">
<div id="modal_enter" class="enter">																																	<!-- Модальне вікно для авторизації (з'являється після натискання на кнопку "Вхід") -->
    <div><a href="#close" title="Close" class="close">X</a>
         <form id="contact_form" action="<c:url value='/j_spring_security_check' />" method="post">																												<!-- Форма авторизації -->
            <input type="text" id="j_username" name="j_username" placeholder="Please enter your name:" value="" />
            <input type="password" id="j_password" name="j_password" placeholder="Please enter your password:" value="" />
            <input type="submit" value="Sign in" id="sub_button"   />
            <a href="/authorization" id="authorization_link">Authorization</a>
         </form>
    </div>
</div>
</div>
</body>
</html>
