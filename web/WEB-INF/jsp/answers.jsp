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

            <spring:url value="/profilePage" var="profile"/>
            <a href="${profile}" class = "thisBigLinkHeader">Profile Page</a>

            <spring:url value="/courses" var="coursesList"/>
            <a href="${coursesList}" class = "bigLinkHeader">Courses List</a>

            <spring:url value="/aboutUs" var="about"/>
            <a href="${about}" class = "bigLinkHeader">About Us</a>

            <spring:url value="/" var="logout"/>
            <a href="${logout}" class = "bigLinkHeader">Logout</a>
        </div>
    </div>
</header>

<div id="wrapper">
    <main>
        <div id="content">
            <div class="innertube">
                <table cellspacing="10">
                    <tr><th colspan="2">Answers</th></tr>

                    <tr>
                        <td></td>
                        <td valign="middle" align="center">User answer</td>
                        <td valign="middle" align="center">Correct answer</td>
                        <td valign="middle" align="center">Tip</td>
                    </tr>
                    <tr>
                        <td>Question 1</td>
                        <td valign="middle" align="center">${answers.filteredAnswers.get(0)}</td>
                        <td valign="middle" align="center">${answers.correctAnswer1}</td>
                        <td valign="middle" align="center">${answers.tips[0]}</td>
                    </tr>
                    <tr>
                        <td>Question 2</td>
                        <td valign="middle" align="center">${answers.filteredAnswers.get(1)}</td>
                        <td valign="middle" align="center">${answers.correctAnswer2}</td>
                        <td valign="middle" align="center">${answers.tips[1]}</td>
                    </tr>
                    <tr>
                        <td>Question 3</td>
                        <td valign="middle" align="center">${answers.filteredAnswers.get(2)}</td>
                        <td valign="middle" align="center">${answers.correctAnswer3}</td>
                        <td valign="middle" align="center">${answers.tips[2]}</td>
                    </tr>
                    <tr>
                        <td>Question 4</td>
                        <td valign="middle" align="center">${answers.filteredAnswers.get(3)}</td>
                        <td valign="middle" align="center">${answers.correctAnswer4}</td>
                        <td valign="middle" align="center">${answers.tips[3]}</td>
                    </tr>
                    <tr>
                        <td>Question 5</td>
                        <td valign="middle" align="center">${answers.filteredAnswers.get(4)}</td>
                        <td valign="middle" align="center">${answers.correctAnswer5}</td>
                        <td valign="middle" align="center">${answers.tips[4]}</td>
                    </tr>
                </table>
            </div>

        </div>
    </main>

    <nav>
        <div class="innertubeNav">
            <br>
            <br>
            <spring:url value="/profilePage" var="profile"/>
            <a href="${profile}" class="thisBigLinkNav">My Profile Page</a>
            <br>
            <br>
            <br>
            <spring:url value="/historyCourse" var="historyCourse"/>
            <a href="${historyCourse}" class ="bigLinkNav">History Overview</a>
            <ul>
                <li>
                    <spring:url value="/historyLectureOne" var="historyLecture1"/>
                    <a href="${historyLecture1}" class = "smallLinkNav">Lecture 1 - French Revolution</a>
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





