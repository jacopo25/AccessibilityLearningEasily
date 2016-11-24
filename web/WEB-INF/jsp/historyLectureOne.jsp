<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 23/11/2016
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/generalStyle.css"
          type="text/css">
    <title>LE - The French Revolution</title>
</head>

<body>

<header>
    <div class="innertube">
        <h1>History - Lecture One - The French Revolution </h1>
        <div class="usefullLink">
            <spring:url value="/aboutUs" var="About"/>
            <a href="${About}" id="linkAbout">About Us</a>
            <spring:url value="/login" var="Login"/>
            <a href="${Login}" id="linkLog">Login</a>
            <spring:url value="/registration" var="Registration"/>
            <a href="${Registration}" id="linkReg">Register</a>
        </div>
    </div>
</header>

<div id="wrapper">

    <main>
        <div id="content">
            <div class="innertube">
                <h1>Heading</h1>
                <p><script>generateText(20)</script></p>
            </div>
        </div>
    </main>
