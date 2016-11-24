<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 16/11/2016
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/generalStyle.css"
          type="text/css">
    <title>LE - History Course</title>
</head>

<body>

<header>
    <div class="innertube">

        <h1>History Course</h1>

        <div class="usefullLink">
            <spring:url value="/courses" var="course"/>
            <a href="${course}" id="linkCourse">Courses</a>

            <spring:url value="/profilePage" var="profile"/>
            <a href="${profile}" id="linkProfile">Your Profile</a>

            <spring:url value="/aboutUs" var="about"/>
            <a href="${about}" id="linkAbout">About Us</a>

            <spring:url value="/index" var="logout"/>
            <a href="${logout}" id="linkLogOut">Logout</a>
        </div>

    </div>
</header>

<div id="wrapper">

    <main>
        <div id="content">
            <div class="innertube">
                <h1>History Course</h1>
                <p>Qui spieghiamo il corso!</p>
            </div>
        </div>
    </main>