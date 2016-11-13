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
    <title>LE - Login</title>
</head>
<body>

<div class="container">

    <form id="signup" method="post">

        <div class="header">
            <h3>Log In</h3>
        </div>

        <div class="sep"></div>

        <div class="inputs">

            <spring:bind path="account.nickname">
                <input type="text" placeholder="nickname"
                       name="${status.expression}" value="${status.value}">
            </spring:bind>

            <spring:bind path="account.password">
                <input type="password" placeholder="password"
                       name="${status.expression}" value="${status.value}">
            </spring:bind>

            <button type="submit" id="submit">Log In</button>

        </div>

    </form>

</div>
</body>
</html>
