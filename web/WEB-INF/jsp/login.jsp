<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 24/10/2016
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/homeStyle.css"
          type="text/css">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://rawgit.com/vitmalina/w2ui/master/dist/w2ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://rawgit.com/vitmalina/w2ui/master/dist/w2ui.min.css" />
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

    <div class="innertubeHeader">
        <div class="usefulLink">
            <spring:url value="/" var="index"/>
            <a href="${index}" class = "thisBigLinkHeader">Homepage</a>
         </div>
    </div>

    <form:form class="form" method="POST" autocomplete="off" modelAttribute="Account">

        <div class="w3-center">
            <div class="LogIn">Log In</div>

        <div class="sep"></div>

        <div class="inputs">

            <spring:bind path="nickname">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label for="nickname" style="color: white">Nickname</label>
                    <form:input path ="nickname" type="text" id="nickname"
                                name="${status.expression}" value="${status.value}"/>
                    <form:errors path="nickname" style="color: white"/>
                </div>
                <br>
            </spring:bind>

            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                <label for="password" style="color: white">Password</label>
                    <form:input path ="password" type="password" id="password"
                                name="${status.expression}" value="${status.value}"/>
                    <form:errors path="password" style="color: white"/>
                </div>
                <br>
            </spring:bind>

            <button type="submit" id="submit">Sign In</button>

        </div>


    </form:form>

    <spring:url value="/registration" var="register"/>
    <a href="${register}" class = "SignUp">Sign Up</a>

        </div>

</div>



</body>
</html>
