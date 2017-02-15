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
                    <h1>History Course - Lecture Two</h1>
                    <!-- Description of the page content -->
                    <h2>The First World War WWI</h2>
                </div>
            </div>

            <div class="videodiv">
                <h3> A video about the First World War</h3>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/-3UjJ5kxiLI" frameborder="0"></iframe>
            </div>

            <div class="lectureTextdiv">

                <h3> Text about the First World War </h3>

                <br>
                <p> World War I was a major conflict fought between 1914 and 1918.</p>

                <p>World War I was fought between the Allied Powers and the Central Powers. The main members of the Triple Entente (also known as the Allied Powers) were France, Russia, and Britain. The United States also fought on the side of the Allies after 1917.</p>
                <p> The main members of the Central Powers were Germany, Austria-Hungary, the Ottoman Empire, and Bulgaria. </p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>

                <img src="../resources/images/trench.jpeg" alt="Men in a trench, a depression in the ground used as shelter from artillery and firearms" style="width:304px;height:228px;">
                <p> The majority of the fighting took place in Europe along two fronts: the western front and the eastern front. The western front was a long line of trenches that ran from the coast of Belgium to Switzerland. A lot of the fighting along this front took place in France and Belgium. </p>
                <p> The eastern front was between Germany, Austria-Hungary, and Bulgaria on one side and Russia and Romania on the other.</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>

                <p> Although there were a number of causes for the war, the assassination of Austrian Archduke Franz Ferdinand was the main catalyst for starting the war. After the assassination, Austria declared war on Serbia.</p>
                <p> Then Russia prepared to defend its ally Serbia. Next, Germany declared war on Russia to protect Austria. This caused France to declare war on Germany to protect its ally Russia. </p>
                <p> Germany invaded Belgium to get to France which caused Britain to declare war on Germany. This all happened in just a few days. </p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>
                <p> A lot of the war was fought using trench warfare along the western front. The armies hardly moved at all. They just bombed and shot at each other from across the trenches.</p>
                <p> Some of the major battles during the war included the First Battle of the Marne, Battle of the Somme, Battle of Tannenberg, Battle of Gallipoli, and the Battle of Verdun.</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>
                <p> The fighting ended on November 11, 1918 when a general armistice was agreed to by both sides. </p>

                <p> The war officially ended between Germany and the Allies with the signing of the Treaty of Versailles. </p>

            </div>

            <div class="questionsLinkPage">

                <form method="post">

                    <spring:bind path="lecture.lecture_name">
                        <input type="hidden"
                               name="${status.expression}" value="The First World War">
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
                    <a href="${historyLecture1}" class = "smallLinkNav">Lecture 1 - French Revolution</a>
                </li>
                <li>
                    <spring:url value="/historyLectureTwo" var="historyLecture2"/>
                    <a href="${historyLecture2}" class = "thisSmallLinkNav">Lecture 2 - First World War</a>
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
