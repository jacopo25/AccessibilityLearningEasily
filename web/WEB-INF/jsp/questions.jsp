<%--
  Created by IntelliJ IDEA.
  User: rezzo
  Date: 18/01/2017
  Time: 22:36
  To change this template use File | Settings | File Templates.
  <%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="charset = utf-8">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/generalStyle.css"
          type="text/css">
    <title>Questions page</title>
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
                <form:form  method="POST" modelAttribute="supportClassAnswers" >
                    <fieldset>
                        <legend>Questions</legend>

                        <c:forEach items="${supportClassAnswers.answers}" varStatus="loop">
                            <legend>${supportClassAnswers.getAnswers().get(loop.index).getQuestion()}</legend>
                            ${supportClassAnswers.getAnswers().get(loop.index).getAnsw1()}<form:radiobutton path ="userAnswers[${loop.index}]" value="${supportClassAnswers.getAnswers().get(loop.index).getAnsw1()}"/>
                            ${supportClassAnswers.getAnswers().get(loop.index).getAnsw2()}<form:radiobutton path ="userAnswers[${loop.index}]" value="${supportClassAnswers.getAnswers().get(loop.index).getAnsw2()}"/>
                            ${supportClassAnswers.getAnswers().get(loop.index).getAnsw3()}<form:radiobutton path ="userAnswers[${loop.index}]" value="${supportClassAnswers.getAnswers().get(loop.index).getAnsw3()}"/>
                            ${supportClassAnswers.getAnswers().get(loop.index).getAnsw4()}<form:radiobutton path ="userAnswers[${loop.index}]" value="${supportClassAnswers.getAnswers().get(loop.index).getAnsw4()}"/>
                        </c:forEach>

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
                    <spring:url value="/mathLectureOne" var="mathLecture1"></spring:url>
                    <a href="${historyLecture1}" class = "smallLinkNav">Lecture 1 - Equations</a>
                </li>
                <li>
                    <spring:url value="/mathLectureTwo" var="mathLecture2"></spring:url>
                    <a href="${historyLecture2}" class = "smallLinkNav">Lecture 2 - Inequalities</a>
                </li>
                <li>
                    <spring:url value="/mathLectureThree" var="mathLecture3"></spring:url>
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






