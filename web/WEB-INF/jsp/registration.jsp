<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: rezzo
  Date: 23/11/2016
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="../resources/css/homeStyle.css"
          type="text/css">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://rawgit.com/vitmalina/w2ui/master/dist/w2ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://rawgit.com/vitmalina/w2ui/master/dist/w2ui.min.css" />
    <style type="text/css">
        .Registration{
            font-family: 'fff_tusjbold';
            color: white;
        }
    </style>



    <title>Registration</title>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>


<div class="bgimg">

    <form class="form" method="post" autocomplete="off" id="regForm">

        <div class="w3-center">
            <div class="Registration">Registration</div>

            <div class="sep"></div>

            <div class="inputs">

                <spring:bind path="account.name">
                    <input type="text" placeholder="first name" id="name"
                           name="${status.expression}" value="${status.value}">
                    <br>
                </spring:bind>

                <spring:bind path="account.surname">
                    <input type="text" placeholder="surname" id="surname"
                           name="${status.expression}" value="${status.value}"><br>
                </spring:bind>

                <spring:bind path="account.mail">
                    <input type="text" placeholder="mail" id="mail"
                           name="${status.expression}" value="${status.value}"><br>
                </spring:bind>

                <spring:bind path="account.age">
                    <input type="text" placeholder="age" id="age"
                           name="${status.expression}" value="${status.value}"><br>
                </spring:bind>

                <spring:bind path="account.nickname">
                    <input type="text" placeholder="nickname" id="nickname"
                           name="${status.expression}" value="${status.value}"><br>
                </spring:bind>

                <spring:bind path="account.password">
                    <input type="password" placeholder="password" id="password"
                           name="${status.expression}" value="${status.value}"><br>
                </spring:bind>

                <input type="password" placeholder="confirm password" id="confirm_password">
                <div id='message'></div>
                <br>

                <spring:bind path="account.confirmReg">
                    <input type="hidden"
                           name="${status.expression}" value="${account.confirmReg}">
                </spring:bind>

                <button type="submit" id="submit" disabled="true">Register</button>

            </div>
        </div>

    </form>

</div>

<script type="text/javascript">

    $("#password, #confirm_password").on("keyup", function () {
        if ($("#password").val() == $("#confirm_password").val()) {
            $("#message").html("PASSWORD MATCHING").css("color", "CHARTREUSE");
            document.getElementById("submit").disabled = false;
        } else
            $("#message").html("PASSWORD NOT MATCHING").css("color", "YELLOW");
    });

</script>

<script type="text/javascript">


    $( "#regForm" ).submit(function( event ) {

        w2popup.open({
            body: '<div class="w2ui-centered">Congratulation!!!Your registration has succeeded</div>',
            buttons: '<button  type="button">'+
                     '<spring:url value="/login" var="confReg"/>'+
                     '<a href="${confReg}" style=" font-size: 15px">Go to log in</a></button>'
        });

        event.preventDefault();
    });


</script>

</body>
</html>
