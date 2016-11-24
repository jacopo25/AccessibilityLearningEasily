<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jacopo Magni
  Date: 24/10/2016
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/homeStyle.css"
          type="text/css">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://rawgit.com/vitmalina/w2ui/master/dist/w2ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://rawgit.com/vitmalina/w2ui/master/dist/w2ui.min.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
    <style type="text/css">
        .LogIn{
            font-family: 'fff_tusjbold';
            color: white;
        }
    </style>
    <title>LE - Login</title>
</head>
<body>

<div class="bgimg">

    <form class="form" method="post" autocomplete="off">

        <div class="w3-center">
            <div class="LogIn">Log In</div>

        <div class="sep"></div>

        <div class="inputs">

            <spring:bind path="account.nickname">
                <input type="text" placeholder="nickname" id="nickname"
                       name="${status.expression}" value="${status.value}"><br>
            </spring:bind>

            <spring:bind path="account.password">
                <input type="password" placeholder="password" id="password"
                       name="${status.expression}" value="${status.value}"><br>
            </spring:bind>

            <button type="submit" id="submit">Sign In</button>

        </div>
        </div>

    </form>

</div>

<script type="text/javascript">
    //var confirmReg = ${account.confirmReg};
    //var sec = Math.floor(Date.now());
    //var tempo = new Date(sec);
    //var m = tempo.getMilliseconds();
    //alert("tempo quando carico login "+tempo+" millisecondi "+m);
    //alert("ConfirmReg "+confirmReg);
    //if(confirmReg == true) {
    //alert(${account.name});
      //  $(document).ready(function() {

//            w2popup.open({
  //              body: '<div class="w2ui-centered">Congratulation!!!Your registration has succeeded</div>',
    //            buttons: '<button  type="button" onclick="w2popup.close();">Go to log in</a></button>'
      //      });

        //});

    //}
</script>

</body>
</html>
