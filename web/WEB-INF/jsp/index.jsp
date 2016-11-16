<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 27/10/2016
  Time: 16:52
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
    <title>LE - Homepage</title>
  </head>
  <body>

  <div class="bgimg">

    <div class="usefullLink">
      <spring:url value="/aboutUs" var="About"/>
      <a href="${About}" id="linkAbout">About Us</a>
      <spring:url value="/aboutUs" var="About"/>
      <a href="${About}" id="linkLog">Login</a>
      <spring:url value="/aboutUs" var="About"/>
      <a href="${About}" id="linkReg">Register</a>
    </div>

    <div class="w3-center">
      <h1 class="h1">LEARNING EASILY</h1>
      <hr class="w3-border-grey" style="margin:auto;width:40%">
      <p class="w3-center" style="font-size: 36px; color: white;">Learn like it's a game! A very easy way to learn things</p>
        <button id="button_login" type="button" >
            <spring:url value="/login" var="Login"/>
            <a href="${Login}" style="text-decoration: none; color: white; font-size: 40px">Login</a><br>
        </button>
        <button id="button_register" type="button">
            <spring:url value="/login" var="Login"/>
            <a href="${Login}" style="text-decoration: none; color: white; font-size: 40px">Register</a><br>
        </button>
    </div>

    <div class="w3-display-bottomleft w3-padding-large"></div>

  </div>

  </body>

</html>