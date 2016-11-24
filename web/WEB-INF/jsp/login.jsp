<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 24/10/2016
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/homeStyle.css"
          type="text/css">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
    <style type="text/css">
        .LogIn{
            font-family: 'fff_tusjbold';
            color: white;
        }
    </style>
    <title>LE - Login</title>
</head>
<body>

<div class="bgimg">

    <form class="form" method="post" autocomplete="off">

        <div class="w3-center">
            <div class="LogIn">Log In</div>

        <div class="sep"></div>

        <div class="inputs">

            <spring:bind path="account.nickname">
                <input type="text" placeholder="nickname" id="nickname"
                       name="${status.expression}" value="${status.value}"><br>
            </spring:bind>

            <spring:bind path="account.password">
                <input type="password" placeholder="password" id="password"
                       name="${status.expression}" value="${status.value}"><br>
            </spring:bind>

            <button type="submit" id="submit">Sign In</button>

        </div>
        </div>

    </form>

</div>

<div id="boxes">
    2
    <div id="dialog" class="window">
        3
        Your Content Goes Here
        4
        <div id="popupfoot"> <a href="#" class="close agree">I agree</a> | <a class="agree"style="color:red;" href="#">I do not agree</a> </div>
        5
    </div>
    6
    <div id="mask"></div>
    7
</div>

<script type="text/javascript">
    var confirmReg = ${account.confirmReg};
    //var sec = Math.floor(Date.now());
    //var tempo = new Date(sec);
    //var m = tempo.getMilliseconds();
    //alert("tempo quando carico login "+tempo+" millisecondi "+m);
    alert("ConfirmReg "+confirmReg);
    if(confirmReg == true) {
        $(document).ready(function() {
            var id = '#dialog';

//Get the screen height and width
            var maskHeight = $(document).height();
            var maskWidth = $(window).width();

//Set heigth and width to mask to fill up the whole screen
            $('#mask').css({'width':maskWidth,'height':maskHeight});

//transition effect
            $('#mask').fadeIn(500);
            $('#mask').fadeTo("slow",0.9);

//Get the window height and width
            var winH = $(window).height();
            var winW = $(window).width();

//Set the popup window to center
            $(id).css('top',  winH/2-$(id).height()/2);
            $(id).css('left', winW/2-$(id).width()/2);

//transition effect
            $(id).fadeIn(2000);

        });

    }
</script>

</body>
</html>
