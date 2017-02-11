<%--
  Created by IntelliJ IDEA.
  User: rezzo
  Date: 18/01/2017
  Time: 22:36
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
                <form:form  method="POST" modelAttribute="answers">
                    <fieldset>
                        <legend>Questions</legend>
                        <legend>Question 1</legend>
                        <spring:bind path="userAnswer1">
                            Answer 1
                            <form:radiobutton path ="userAnswer1" id="userAnswer1" name="Q1" value="1"/>
                        </spring:bind>

                        <spring:bind path="userAnswer2">
                            Answer 2
                        <form:radiobutton path ="userAnswer2" id="userAnswer2" name="Q1" value="2"/>
                        </spring:bind>

                        <spring:bind path="userAnswer3">
                            Answer 3
                            <form:radiobutton path ="userAnswer3" id="userAnswer3" name="Q1" value="3"/>
                        </spring:bind>

                        <spring:bind path="userAnswer4">
                            Answer 4
                            <form:radiobutton path ="userAnswer4" id="userAnswer4" name="Q1" value="4"/>
                        </spring:bind>

                        <legend>Question 2</legend>

                        <spring:bind path="userAnswer5">
                        Answer 5
                        <form:radiobutton path ="userAnswer5" id="userAnswer5" name="Q2" value="5"/>
                        </spring:bind>
                        <spring:bind path="userAnswer6">
                        Answer 6
                        <form:radiobutton path ="userAnswer6" id="userAnswer6" name="Q2" value="6"/>
                        </spring:bind>
                        <spring:bind path="userAnswer7">
                        Answer 7
                        <form:radiobutton path ="userAnswer7" id="userAnswer7"  name="Q2" value="7"/>
                        </spring:bind>
                        <spring:bind path="userAnswer8">
                        Answer 8
                        <form:radiobutton path ="userAnswer8" id="userAnswer8"  name="Q2" value="8"/>
                        </spring:bind>
                        <legend>Question 3</legend>
                        <spring:bind path="userAnswer9">
                        Answer 9
                        <form:radiobutton path ="userAnswer9" id="userAnswer9" name="Q3" value="9"/>
                        </spring:bind>
                        <spring:bind path="userAnswer10">
                        Answer 10
                        <form:radiobutton path ="userAnswer10" id="userAnswer10" name="Q3" value="10"/>
                        </spring:bind>
                        <spring:bind path="userAnswer11">
                        Answer 11
                        <form:radiobutton path ="userAnswer11" id="userAnswer11" name="Q3" value="11"/>
                        </spring:bind>
                        <spring:bind path="userAnswer12">
                        Answer 12
                        <form:radiobutton path ="userAnswer12" id="userAnswer12" name="Q3" value="12"/>
                        </spring:bind>
                        <legend>Question 4</legend>
                        <spring:bind path="userAnswer13">
                        Answer 13
                        <form:radiobutton path ="userAnswer13" id="userAnswer13" name="Q4" value="13"/>
                        </spring:bind>
                        <spring:bind path="userAnswer14">
                        Answer 14
                        <form:radiobutton path ="userAnswer14" id="userAnswer14" name="Q4" value="14"/>
                        </spring:bind>
                        <spring:bind path="userAnswer15">
                        Answer 15
                        <form:radiobutton path ="userAnswer15" id="userAnswer15" name="Q4" value="15"/>
                        </spring:bind>
                        <spring:bind path="userAnswer16">
                        Answer 16
                        <form:radiobutton path ="userAnswer16" id="userAnswer16" name="Q4" value="16"/>
                        </spring:bind>
                        <legend>Question 5</legend>
                        <spring:bind path="userAnswer17">
                        Answer 17
                        <form:radiobutton path ="userAnswer17" id="userAnswer17" name="Q5" value="17"/>
                        </spring:bind>
                        <spring:bind path="userAnswer18">
                        Answer 18
                        <form:radiobutton path ="userAnswer18" id="userAnswer18"  name="Q5" value="18"/>
                        </spring:bind>
                        <spring:bind path="userAnswer19">
                        Answer 19
                        <form:radiobutton path ="userAnswer19" id="userAnswer19" name="Q5" value="19"/>
                        </spring:bind>
                        <spring:bind path="userAnswer20">
                        Answer 20
                        <form:radiobutton path ="userAnswer20" id="userAnswer20" name="Q5" value="20"/>
                        </spring:bind>
                    </fieldset>

                    <button type="submit" id="submit">Confirm</button>
                </form:form>
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






