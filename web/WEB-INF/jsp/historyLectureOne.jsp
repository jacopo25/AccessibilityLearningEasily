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
            <a href = "${course}" class = "bigLinkHeader">Courses list</a>

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
            </div>

            <div class="videodiv">
                <h3> A video about the French Revolution</h3>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/X1_2NwmIobU" frameborder="0"></iframe>
            </div>

            <div class="lectureTextdiv">

                <h3> Text about the French Revolution </h3>

                <br>

                <p> The French Revolution was an influential period of social and political upheaval in France that lasted from 1789 until 1799.</p>

                <p> For centuries, the quality of life in Europe had been determined by the status that a person or family held. This status could not be earned, but was determined by the family to which someone was born. If you were born to a poor family, your life would be one of poverty. No matter how hard an individual worked, it was impossible to rise above this fate.</p>
                <p> 97% of Europe’s people struggled to survive while the remaining 3% lived a life of wealth and comfort.</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>

                <img src="../resources/images/bastiglia.jpg" alt="A paint about the attack on the Bastille prison" style="width:304px;height:228px;">
                <p> This gap between the wealthy and the poor created resentment. Those at the bottom saw the wealthy grow increasingly richer, while the poor got nothing while working the hardest.</p>
                <p> The lower classes decided to rebel, and create a new, more fair society. The changes for reform were based on the desire for democracy, citizenship, and undeniable rights</p>

                <p> On 14 July 1789, the people decided to attack the Bastille prison. The Bastille contained weapons, as well as being a symbol of the power of the nobility and the rule of the king, the "Ancien Régime". By the afternoon, the people had broken into the Bastille and released the seven prisoners being held there.</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>

                <p> On 14 July 1790, a year since the storming of the Bastille, thousands of people gathered in the Champs de Mars to celebrate. The Assembly continued to work on a constitution and make changes. Nobles could no longer pass their titles to their children.</p>
                <p> During the Reign of Terror, everyone was afraid they would be accused of being a traitor. The penalty for that was being beheaded in the guillotine.</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>
                <p> The French Revolution, though it seemed a failure in 1799, and appeared nullified by 1815, had far-reaching results. Feudalism was dead and France was unified. The Revolutionary and Napoleonic Wars tore down the ancient structure of society and government of Europe.</p>

                <p> The most important result of the French revolution was the Abolition of the French monarchy. Another important result was the establishment of a secular and democratic republic that became increasingly authoritarian and militaristic</p>
            </div>

            <div class="questionsLinkPage">

                <form method="post">

                    <spring:bind path="lecture.lecture_name">
                        <input type="hidden"
                               name="${status.expression}" value="The French Revolution">
                    </spring:bind>

                    <input type="submit" value="Go to the Questions">
                </form>
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
