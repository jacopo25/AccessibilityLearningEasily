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
</body>
</html>
