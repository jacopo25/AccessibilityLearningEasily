<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 03/11/2016
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/generalStyle.css"
          type="text/css">
    <title>Profile Page</title>
</head>

<body>

<header>
    <div class="innertubeHeader">

        <h1 id="homepage">LEARNING EASILY</h1>

        <div class="usefulLink">
            <button id="button_course" type="button" >
                <spring:url value="/courses" var="course"/>
                <a href = "${course}" id = "bigLinkHeader">Courses</a>
            </button>

            <button id="button_profile" type="button" >
                <spring:url value="/profilePage" var="profile"/>
                <a href="${profile}" id = "thisBigLinkHeader">Your Profile</a>
            </button>

            <button id="button_about" type="button" >
                <spring:url value="/aboutUs" var="about"/>
                <a href="${about}" id = "bigLinkHeader">About Us</a>
            </button>

            <button id="button_logout" type="button" >
                <spring:url value="/index" var="logout"/>
                <a href="${logout}" id = "bigLinkHeader">Logout</a>
            </button>
        </div>

    </div>
</header>

<div id="wrapper">

    <main>
        <div id="content">
            <div class="innertube">
                <h1>Hi ${account.nickname} This is your profile: </h1>
                <h2>Your profile data</h2>
                <p><b>Name: </b> ${account.name} </p>
                <p><b>Surname: </b> ${account.surname} </p>
                <p><b>Nickname: </b> ${account.nickname} </p>
                <p><b>Age: </b> ${account.age} </p>
                <h2>Your lectures: </h2>
            </div>
        </div>
    </main>

    <nav>
        <div class="innertubeNav">
            <br>
            <br>

            <spring:url value="/profilePage" var="profile"/>
            <a href="${profile}" id="thisBigLinkNav">My Profile</a>

            <br>
            <br>
            <br>

            <spring:url value="/historyCourse" var="historyCourse"/>
            <a href="${historyCourse}" id="bigLinkNav">History Course</a>
            <ul>
                <li>
                    <spring:url value="/historyLectureOne" var="historyLecture1"/>
                    <a href="${historyLecture1}" id = "smallLinkNav">The French Revolution</a>
                </li>
                <li>
                    <spring:url value="/historyLectureTwo" var="historyLecture2"/>
                    <a href="${historyLecture2}" id = "smallLinkNav">The First World War</a>
                </li>
                <li>
                    <spring:url value="/historyLectureThree" var="historyLecture3"/>
                    <a href="${historyLecture3}" id = "smallLinkNav">The Second World War</a>
                </li>
            </ul>

            <br>
            <br>

            <spring:url value="/mathCourse" var="mathCourse"/>
            <a href="${mathCourse}" id="bigLinkNav">Math Course</a>
            <ul>
                <li>
                    <spring:url value="/mathLectureOne" var="mathLecture1"/>
                    <a href="${historyLecture1}" id = "smallLinkNav">The French Revolution</a>
                </li>
                <li>
                    <spring:url value="/mathLectureTwo" var="mathLecture2"/>
                    <a href="${historyLecture2}" id = "smallLinkNav">The First World War</a>
                </li>
                <li>
                    <spring:url value="/mathLectureThree" var="mathLecture3"/>
                    <a href="${historyLecture3}" id = "smallLinkNav">The Second World War</a>
                </li>
            </ul>
        </div>
        <div style="display: block; clear: both;"></div>
    </nav>

</div>

<footer>
    <div class="innertubeFooter">
        <p id="footerText">Learning Easily - Project for: Accessibility. AA 2015/2016 - Authors: Magni Jacopo and Rezzonico Davide</p>
    </div>
</footer>

</body>
</html>
