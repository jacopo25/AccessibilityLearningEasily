<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="charset = utf-8">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/generalStyle.css"
          type="text/css">
    <title>Profile Page</title>
</head>

<body>
<a href="#content" class="hidden">Skip to my Profile details</a>
<header>
    <div class="innertubeHeader">
        <!-- Website logo -->
        <h1 id="homepage">LEARNING EASILY</h1>
        <!-- Header links. Navigational links -->
        <div class="usefulLink">

                 <spring:url value="/profilePage" var="profile"></spring:url>
                <a href="${profile}" class = "thisBigLinkHeader">Profile Page</a>

                <spring:url value="/courses" var="coursesList"></spring:url>
                <a href="${coursesList}" class = "bigLinkHeader">Courses List</a>

                <spring:url value="/aboutUs" var="about"></spring:url>
                <a href="${about}" class = "bigLinkHeader">About Us</a>

                <spring:url value="/" var="logout"></spring:url>
                <a href="${logout}" class = "bigLinkHeader">Logout</a>
        </div>
    </div>
</header>

<div id="wrapper">
    <main>
        <div id="content">
            <div class="innertube">
                <!-- Title of the page -->
                <h1>Hi ${account.nickname} This is your profile page: </h1>
                <!-- Description of the page content -->
                <p>Here you can see your profile data, the lectures that you have completed and the badges that you have earned!</p>

                <div>
                    <h2>Profile data</h2>
                    <p><strong>Name:</strong> ${account.name} </p>
                    <p><strong>Surname: </strong> ${account.surname} </p>
                    <p><strong>Nickname: </strong> ${account.nickname} </p>
                    <p><strong>Age: </strong> ${account.age} </p>
                </div>


                <div>
                    <h2>Lectures completed</h2>
                </div>
            </div>
        </div>
    </main>

    <nav>
        <div class="innertubeNav">
            <br>
            <br>
            <spring:url value="/profilePage" var="profile"></spring:url>
            <a href="${profile}" class="thisBigLinkNav">My Profile Page</a>
            <br>
            <br>
            <br>
            <spring:url value="/historyCourse" var="historyCourse"></spring:url>
            <a href="${historyCourse}" class ="bigLinkNav">History Overview</a>
            <ul>
                <li>
                    <spring:url value="/historyLectureOne" var="historyLecture1"></spring:url>
                    <a href="${historyLecture1}" class = "smallLinkNav">Lecture 1 - French Revolution</a>
                </li>
                <li>
                    <spring:url value="/historyLectureTwo" var="historyLecture2"></spring:url>
                    <a href="${historyLecture2}" class = "smallLinkNav">Lecture 2 - First World War</a>
                </li>
                <li>
                    <spring:url value="/historyLectureThree" var="historyLecture3"></spring:url>
                    <a href="${historyLecture3}" class = "smallLinkNav">Lecture 3 - Second World War</a>
                </li>
            </ul>
            <br>
            <br>
            <spring:url value="/mathCourse" var="mathCourse"></spring:url>
            <a href="${mathCourse}" class="bigLinkNav">Math Overview</a>
            <ul>
                <li>
                    <a class = "smallLinkNav">Lecture 1 - Equations</a>
                </li>
                <li>
                    <a class = "smallLinkNav">Lecture 2 - Inequalities</a>
                </li>
                <li>
                    <a class = "smallLinkNav">Lecture 3 - Quadratic Equations</a>
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
