<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="charset = utf-8">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/generalStyle.css"
          type="text/css">
    <title>Learning Easily - List of courses</title>
</head>

<body>
<a href="#content" class="hidden">Skip to my Profile details</a>
<header>
    <div class="innertubeHeader">
        <h1 id="homepage">LEARNING EASILY</h1>
        <div class="usefulLink">

            <spring:url value="/profilePage" var="profile"/>
            <a href="${profile}" class = "bigLinkHeader">Profile page</a>

            <spring:url value="/courses" var="course"/>
            <a href = "${course}" class = "thisBigLinkHeader">Courses list</a>

            <spring:url value="/aboutUs" var="about"/>
            <a href="${about}" class = "bigLinkHeader">About Us</a>

            <spring:url value="/index" var="logout"/>
            <a href="${logout}" class = "bigLinkHeader">Logout</a>
        </div>
    </div>
</header>

<div id="wrapper">

    <main>
        <div id="content">
            <div class="innertube">
                <div class ="containerIntro">
                    <h1>History Course - Lecture One</h1>
                    <!-- Description of the page content -->
                    <h2>The French Revolution</h2>
                </div>
                <div class ="containerAll">
                    <div class="containerCoursesTop">
                        <div class="containerSingleCourse">
                            <h2> History Course </h2>
                            <spring:url value="/historyCourse" var="historyC"></spring:url>
                            <a href="${historyC}" class="buttonCourses buttonHistory" ></a>
                        </div>
                        <div class="containerSingleCourse containerSingleCourseRight">
                            <h2> Math Course </h2>
                            <spring:url value="/mathCourse" var="mathC"></spring:url>
                            <a href="${mathC}" class="buttonCourses buttonMath" ></a>
                        </div>
                    </div>

                    <div class="containerCoursesDown">
                        <div class="containerSingleCourse containerSingleCourseDown">
                            <h2> This course is not available yet! </h2>
                            <a class="buttonCourses buttonUpcoming"></a>
                        </div>
                        <div class="containerSingleCourse containerSingleCourseDown containerSingleCourseRight">
                            <h2> This course is not available yet! </h2>
                            <a class="buttonCourses buttonUpcoming"></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </main>

    <nav>
        <div class="innertubeNav">
            <br>
            <br>

            <spring:url value="/profilePage" var="profile"/>
            <a href="${profile}" class="bigLinkNav">My Profile Page</a>

            <br>
            <br>
            <br>

            <spring:url value="/historyCourse" var="historyCourse"/>
            <a href="${historyCourse}" class ="bigLinkNav">History Overview</a>
            <ul>
                <li>
                    <spring:url value="/historyLectureOne" var="historyLecture1"/>
                    <a href="${historyLecture1}" class = "thisSmallLinkNav">Lecture 1 - French Revolution</a>
                </li>
                <li>
                    <spring:url value="/historyLectureTwo" var="historyLecture2"/>
                    <a href="${historyLecture2}" class = "smallLinkNav">Lecture 2 - First World War</a>
                </li>
                <li>
                    <spring:url value="/historyLectureThree" var="historyLecture3"/>
                    <a href="${historyLecture3}" class = "smallLinkNav">Lecture 3 - Second World War</a>
                </li>
            </ul>

            <br>
            <br>

            <spring:url value="/mathCourse" var="mathCourse"/>
            <a href="${mathCourse}" class="bigLinkNav">Math Overview</a>
            <ul>
                <li>
                    <spring:url value="/mathLectureOne" var="mathLecture1"/>
                    <a href="${historyLecture1}" class = "smallLinkNav">Lecture 1 - Equations</a>
                </li>
                <li>
                    <spring:url value="/mathLectureTwo" var="mathLecture2"/>
                    <a href="${historyLecture2}" class = "smallLinkNav">Lecture 2 - Inequalities</a>
                </li>
                <li>
                    <spring:url value="/mathLectureThree" var="mathLecture3"/>
                    <a href="${historyLecture3}" class = "smallLinkNav">Lecture 3 - Quadratic Equations</a>
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
