<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
    <title>Profile Page</title>
</head>

<body>

<header>
    <div class="innertubeHeader">

        <h1 id="homepage">LEARNING EASILY</h1>

        <div class="usefulLink">
            <button id="button_course" type="button" >
                <spring:url value="/courses" var="course"/>
                <a href="${course}" style="text-decoration: none; color: white; font-size: 25px">Courses</a>
            </button>

            <button id="button_profile" type="button" >
                <spring:url value="/profilePage" var="profile"/>
                <a href="${profile}" style="text-decoration: none; color: white; font-size: 25px">Your Profile</a>
            </button>

            <button id="button_about" type="button" >
                <spring:url value="/aboutUs" var="about"/>
                <a href="${about}" style="text-decoration: none; color: white; font-size: 25px">About Us</a>
            </button>

            <button id="button_logout" type="button" >
                <spring:url value="/index" var="logout"/>
                <a href="${logout}" style="text-decoration: none; color: white; font-size: 25px">Logout</a>
            </button>
        </div>

    </div>
</header>

<div id="wrapper">

    <main>
        <div id="content">
            <div class="innertube">
                <h1>Hi ${account.nickname} This is your profile: </h1>
                <h2>Your profile data</h2>
                <p><b>Name: </b> ${account.name} </p>
                <p><b>Surname: </b> ${account.surname} </p>
                <p><b>Nickname: </b> ${account.nickname} </p>
                <p><b>Age: </b> ${account.age} </p>
                <h2>Your lectures: </h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec convallis felis in dolor tristique euismod. Vivamus porttitor consequat neque, eget mattis augue congue eget. Nulla eu posuere tortor, in convallis erat. Vivamus feugiat dapibus velit, et ultricies nibh fringilla tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc rutrum porta purus. Nam imperdiet ornare odio, sit amet volutpat elit commodo consequat. Proin a rhoncus ipsum, bibendum sagittis ex. Phasellus efficitur justo a auctor ullamcorper. Mauris vehicula mollis purus, eget fringilla mauris scelerisque congue. Fusce efficitur eget augue et convallis. Nulla finibus metus odio, sed accumsan justo pharetra a. Nulla nec aliquet nulla, a ornare justo. Cras eget metus malesuada, commodo nulla ultrices, bibendum risus. Fusce arcu magna, gravida in pretium eu, efficitur sed tortor. Fusce et metus in odio vulputate semper quis ut ex. Quisque consequat ligula ut est malesuada lacinia. Maecenas fringilla ligula nec pulvinar commodo. Suspendisse potenti. Proin a laoreet eros, eget mollis nisi. Quisque vulputate ante et ligula pulvinar maximus. Fusce et metus vel nibh tristique hendrerit tristique non arcu. Curabitur suscipit nibh metus, eget fringilla est gravida a. Sed tempus suscipit purus ut pulvinar. Vestibulum placerat id ipsum eu vulputate. Vestibulum feugiat quam massa, eget viverra diam ornare nec. In vulputate elit sit amet odio scelerisque, et volutpat ligula volutpat. Maecenas congue nulla quis eros sagittis interdum. Ut mattis urna erat, sit amet condimentum leo tincidunt ac. Quisque eros leo, facilisis at nisl eu, vehicula vulputate ante. Aliquam fringilla elit sed neque pretium posuere. Phasellus justo erat, pharetra elementum congue quis, dictum et nisi. Vestibulum rhoncus nunc accumsan tempus efficitur. Donec efficitur eget arcu id tempus. Cras porttitor fermentum hendrerit. In tempor, mauris a molestie tincidunt, mauris urna aliquam leo, ut cursus neque enim ac lectus. Nulla facilisi. Morbi dapibus justo ante, non mattis diam fermentum sed. Phasellus sit amet rhoncus nibh. In aliquet magna risus, laoreet aliquet leo tempor ac. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed fringilla, ipsum ac dapibus luctus, sem erat porttitor diam, eu placerat magna neque in arcu. Morbi eu sapien dolor. Suspendisse tincidunt libero erat, quis lacinia odio rhoncus mollis. Donec condimentum metus sed ipsum suscipit euismod eu commodo lacus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec convallis felis in dolor tristique euismod. Vivamus porttitor consequat neque, eget mattis augue congue eget. Nulla eu posuere tortor, in convallis erat. Vivamus feugiat dapibus velit, et ultricies nibh fringilla tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc rutrum porta purus. Nam imperdiet ornare odio, sit amet volutpat elit commodo consequat. Proin a rhoncus ipsum, bibendum sagittis ex. Phasellus efficitur justo a auctor ullamcorper. Mauris vehicula mollis purus, eget fringilla mauris scelerisque congue. Fusce efficitur eget augue et convallis. Nulla finibus metus odio, sed accumsan justo pharetra a. Nulla nec aliquet nulla, a ornare justo. Cras eget metus malesuada, commodo nulla ultrices, bibendum risus. Fusce arcu magna, gravida in pretium eu, efficitur sed tortor. Fusce et metus in odio vulputate semper quis ut ex. Quisque consequat ligula ut est malesuada lacinia. Maecenas fringilla ligula nec pulvinar commodo. Suspendisse potenti. Proin a laoreet eros, eget mollis nisi. Quisque vulputate ante et ligula pulvinar maximus. Fusce et metus vel nibh tristique hendrerit tristique non arcu. Curabitur suscipit nibh metus, eget fringilla est gravida a. Sed tempus suscipit purus ut pulvinar. Vestibulum placerat id ipsum eu vulputate. Vestibulum feugiat quam massa, eget viverra diam ornare nec. In vulputate elit sit amet odio scelerisque, et volutpat ligula volutpat. Maecenas congue nulla quis eros sagittis interdum. Ut mattis urna erat, sit amet condimentum leo tincidunt ac. Quisque eros leo, facilisis at nisl eu, vehicula vulputate ante. Aliquam fringilla elit sed neque pretium posuere. Phasellus justo erat, pharetra elementum congue quis, dictum et nisi. Vestibulum rhoncus nunc accumsan tempus efficitur. Donec efficitur eget arcu id tempus. Cras porttitor fermentum hendrerit. In tempor, mauris a molestie tincidunt, mauris urna aliquam leo, ut cursus neque enim ac lectus. Nulla facilisi. Morbi dapibus justo ante, non mattis diam fermentum sed. Phasellus sit amet rhoncus nibh. In aliquet magna risus, laoreet aliquet leo tempor ac. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed fringilla, ipsum ac dapibus luctus, sem erat porttitor diam, eu placerat magna neque in arcu. Morbi eu sapien dolor. Suspendisse tincidunt libero erat, quis lacinia odio rhoncus mollis. Donec condimentum metus sed ipsum suscipit euismod eu commodo lacus.</p>
            </div>
        </div>
    </main>

    <nav>
        <div class="innertube">
            <h3>My Profile</h3>

            <h3>History Course</h3>
            <ul>
                <li><a href="#">The French Revolution</a></li>
                <li><a href="#">The First World War</a></li>
                <li><a href="#">The Second World War</a></li>
            </ul>

            <h3>Math Course</h3>
            <ul>
                <li><a href="#">The Equations</a></li>
                <li><a href="#">The Disequations</a></li>
                <li><a href="#">The Quadratic Equations</a></li>
                <li><a href="#">The Equations</a></li>
                <li><a href="#">The Disequations</a></li>
                <li><a href="#">The Quadratic Equations</a></li>
                <li><a href="#">The Equations</a></li>
                <li><a href="#">The Disequations</a></li>
                <li><a href="#">The Quadratic Equations</a></li>
            </ul>
        </div>
    </nav>

</div>

<footer>
    <div class="innertubeFooter">
        <p id="footerText">Learning Easily - Project for: Accessibility. AA 2015/2016 - Authors: Magni Jacopo and Rezzonico Davide</p>
    </div>
</footer>

</body>
</html>
