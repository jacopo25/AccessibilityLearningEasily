<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
          href="${pageContext.request.contextPath}/resources/css/homeStyle.css"
          type="text/css">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <title>Registration</title>

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>


<div class="bgimg">

    <form class="form" method="post" autocomplete="off">

        <div class="w3-center">
            <div class="Registration">Registration</div>

            <div class="sep"></div>

            <div class="inputs">

                <spring:bind path="account.name">
                    <input type="text" placeholder="first name" id="name"
                           name="${status.expression}" value="${status.value}"><br>
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

</body>
</html>
