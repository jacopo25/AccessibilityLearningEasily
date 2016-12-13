<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 27/10/2016
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="../resources/css/homeStyle.css" type="text/css">
      <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <style type="text/css">
      h1{
        font-family: 'fff_tusjbold';
        color: white;
      }
    </style>
    <title>Learning Easily - Homepage</title>
  </head>
  <body>

  <div class="bgimg">

    <div class="usefullLink">
      <spring:url value="/aboutUs" var="About"></spring:url>
          <a href="${About}" id="linkAbout" >About Us</a>


      <spring:url value="/login" var="Login"></spring:url>
            <a href="${Login}" id="linkLog" >Login</a>


      <spring:url value="/registration" var="Registration"></spring:url>
                <a href="${Registration}" id="linkReg" >Register</a>


    </div>

    <div class="w3-center">
      <h1 class="h1">LEARNING EASILY</h1>
      <hr class="w3-border-grey" style="margin:auto;width:40%">
      <p class="w3-center" style="font-size: 36px; color: white;">Learn like it's a game! A very easy way to learn things</p>

            <spring:url value="/login" var="Login"></spring:url>
            <a href="${Login}" id="button_login" >Login</a><br>

            <spring:url value="/registration" var="Registration"></spring:url>
            <a href="${Registration}" id="button_register" >Register</a><br>

    </div>

    <div class="w3-display-bottomleft w3-padding-large"></div>

  </div>

  </body>

</html>