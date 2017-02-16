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
                    <h1>History Course - Lecture Three</h1>
                    <!-- Description of the page content -->
                    <h2>The Second World War WWII</h2>
                </div>
            </div>

            <div class="videodiv">
                <h3> A video about the Second World War</h3>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/wvDFsxjaPaE" frameborder="0"></iframe>
            </div>

            <div class="lectureTextdiv">

                <h3> Text about the Second World War </h3>

                <br>
                <p> World War 2 was a battle between two groups of countries the 'Allies' and the 'Axis'. </p>

                <p> The major Allied Powers were Britain, France, Russia, China and the United States. </p>
                <p> The major Axis Powers were Germany, ruled by the Furher Adolf Hitler, Italy, ruled by the Dux Benito Mussolini and Japan, ruled by a man named Hirohito.</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>

                <p> Before World War 2 began, Germany was ruled by a man named Adolf Hitler, together with the Nazi Party, he wanted Germany to rule Europe. To gain more land and power, on 1 September 1939 German troops invaded Poland.</p>
                <p> After Hitler refused to stop the invasion, Britain and France declared war on Germany - World War II had begun.</p>
                <p> During the course of the war, German forces advanced through Europe. By the summer of 1941 they had invaded France, Belgium, Holland, Luxembourg, Denmark, Norway, Greece, Yugoslavia and the USSR(Russia).</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>
                <p> Millions of Germans were imprisoned and killed because they didn't fit the image of the 'perfect' German.</p>

                <p> Hitler wanted to create what he thought was the 'best' and strongest race - and to the Nazi Party, this excluded certain groups, such as Jews, Gypsies and those with physical and mental disabilities.</p>
                <p> In an attempt to eliminate a 'racial enemy' outside of Germany, such groups were also persecuted in the countries invaded by German forces.</p>
                <img src="../resources/images/arbeit.jpg" alt="The Auschwitz entrance with the famous slogan Arbeit Macht Frei" style="width:304px;height:228px;">
                <p> The group most heavily targeted by the Nazis were the Jews. Around six million Jewish people were killed during World War 2 in one of history’s most terrible events - the Holocaust.</p>
                <p> Racist in his views, Hitler blamed Jewish people for Germany losing World War I and claimed they were dangerous to German people and society.</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>
                <p> Around the same time that Germany fought for power in Europe, Japan wanted to control Asia and the Pacific.</p>
                <p> In 1937 (before World War II had officially begun) under Emperor Hirohito, Japan attacked China, bringing the two nations into years of conflict.</p>

                <p> The US didn't join the war until 1941, when Japan attacked the United States - at their Naval Base at Pearl Harbor in Hawaii. On 8 December 1941 (the very next day), the US declared War on Japan and, in turn, its German allies.</p>
                <p> Some countries remained 'neutral' in World War 2. Such countries were Spain, Sweden and Switzerland - who chose not to join either side.</p>

                <p><b>Ok. Let's take a 15 seconds break!</b></p>
                <br>
                <p> The Germans surrendered on 8 May 1945.</p>
                <p> In 1944, an Allied army crossed from Britain to free France from Nazi rule. One year later, Allied armies invaded Germany, forcing the Germans to surrender. </p>

                <p> After nuclear attacks on Japan's major cities Hiroshima and Nagasaki, Japan also surrendered to Allied forces in August the same year. World War 2 had ended.</p>

            </div>

            <div class="questionsLinkPage">

                <form method="post">

                    <spring:bind path="lecture.lecture_name">
                        <input type="hidden" class="linkQuestionButton"
                               name="${status.expression}" value="The Second World War">
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
                    <a href="${historyLecture2}" class = "smallLinkNav">Lecture 2 - First World War</a>
                </li>
                <li>
                    <spring:url value="/historyLectureThree" var="historyLecture3"/>
                    <a href="${historyLecture3}" class = "thisSmallLinkNav">Lecture 3 - Second World War</a>
                </li>
            </ul>

            <br>
            <br>

            <spring:url value="/mathCourse" var="mathCourse"/>
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
