<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 03/11/2016
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/generalStyle.css"
          type="text/css">
    <title>Class Page</title>
</head>

<body>

<header>
    <div class="innertube">
        <h1>Header...</h1>
    </div>
</header>

<div id="wrapper">

    <main>
        <div id="content">
            <div class="innertube">
                <h1>Heading</h1>
                <p><script>generateText(20)</script></p>
            </div>
        </div>
    </main>

    <nav>
        <div class="innertube">
            <h3>Right heading</h3>
            <ul>
                <li><a href="#">Link 1</a></li>
                <li><a href="#">Link 2</a></li>
                <li><a href="#">Link 3</a></li>
                <li><a href="#">Link 4</a></li>
                <li><a href="#">Link 5</a></li>
            </ul>
            <h3>Right heading</h3>
            <ul>
                <li><a href="#">Link 1</a></li>
                <li><a href="#">Link 2</a></li>
                <li><a href="#">Link 3</a></li>
                <li><a href="#">Link 4</a></li>
                <li><a href="#">Link 5</a></li>
            </ul>
            <h3>Right heading</h3>
            <ul>
                <li><a href="#">Link 1</a></li>
                <li><a href="#">Link 2</a></li>
                <li><a href="#">Link 3</a></li>
                <li><a href="#">Link 4</a></li>
                <li><a href="#">Link 5</a></li>
            </ul>
        </div>
    </nav>

</div>

<footer>
    <div class="innertube">
        <p>Footer...</p>
    </div>
</footer>

</body>
</html>
