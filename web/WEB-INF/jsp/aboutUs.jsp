<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 03/11/2016
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../resources/css/homeStyle.css" type="text/css">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <style type="text/css">
        h1{
            font-family: 'fff_tusjbold';
            color: white;
        }
        p {
            color: white;
            font-size: 24px;
        }
    </style>
    <title>LE - About Us</title>
</head>
<body>
    <div class="bgimg">
        <div class="innertubeHeader">
        <div class="usefulLink">
            <spring:url value="/" var="index"></spring:url>
            <a href="${index}" class = "thisBigLinkHeader">Homepage</a>
        </div>
    </div>
        <div class="w3-center">
            <h1 class="h1">About Us</h1>
            <hr class="w3-border-grey" style="margin:auto;width:40%">

            <div class="aboutUsText">
            <p> Hi! We are Jacopo and Davide and we study in Milan at Politecnico!</p>
            <p> We have created this website because we think that learn new things is really cool!
                But... We know that not everyone thinks the same, espacially kids and young people can find it boring!</p>
            <p> So we thought to create a website in which learn new things it's like a game.
                You can watch YouTube videos... because we know that you like to watch videos on YouTube </p>
            <p> However, instead of just watching the video you will learn some concepts,
                and then you will have some simple questions to see if you have understand the lecture! </p>
            </div>
        </div>
     </div>
</body>
</html>
