<%--
  Created by IntelliJ IDEA.
  User: rezzo
  Date: 16/01/2017
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
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
    <title>Answer Page</title>
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
            <a href="${profile}" class = "bigLinkHeader">Profile Page</a>

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
                <h2>Results</h2>
                <p> In this page there are the results of your test! Check out the answers and to which one you have answered correctly! </p>
                <table cellspacing="5" style="border: 1px solid black; border-collapse: collapse; width:100%; margin-top: 100px;">
                    <tr>
                        <th colspan="4" style="font-size: 20px; border: 1px solid black; border-collapse: collapse;">Answers</th>
                    </tr>

                    <tr>
                        <td></td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">User answer</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">Correct answer</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">Tip</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid black; border-collapse: collapse;">Question 1</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.userAnswers.get(0)}</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.correctAnswers.get(0)}</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.tips[0]}</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid black; border-collapse: collapse;">Question 2</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.userAnswers.get(1)}</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.correctAnswers.get(1)}</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.tips[1]}</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid black; border-collapse: collapse;">Question 3</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.userAnswers.get(2)}</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.correctAnswers.get(2)}</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;" >${supportClassAnswers.tips[2]}</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid black; border-collapse: collapse;">Question 4</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.userAnswers.get(3)}</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.correctAnswers.get(3)}</td>
                        <td valign="middle" align="center" style="border: 1px solid black; border-collapse: collapse;">${supportClassAnswers.tips[3]}</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="containerCoursesTop">
            <div class="answersLink">
             <div class="containerSingleCourse">
                 <spring:url value="/profilePage" var="profilePage"></spring:url>
                 <a href="${profilePage}" class="linkQuestionButton">Go to your Profile Page</a>
             </div>
            <div class="containerSingleCourse containerSingleCourseRight">
                 <spring:url value="/courses" var="courses"></spring:url>
                 <a href="${courses}" class="linkQuestionButton">Go to Courses Page</a>
            </div>
            </div>
        </div>
    </main>

    <nav>
        <div class="innertubeNav">
            <br>
            <br>
            <spring:url value="/profilePage" var="profile"></spring:url>
            <a href="${profile}" class="bigLinkNav">My Profile Page</a>
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





