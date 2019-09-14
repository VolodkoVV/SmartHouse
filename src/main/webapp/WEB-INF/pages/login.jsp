<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Smart House</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div class="main">
        <p><img src="https://image.freepik.com/free-photo/_23-2147734216.jpg" alt="img"></p>
        <c:url value="/j_spring_security_check" var="loginUrl" />
        <form action="${loginUrl}" method="POST" class="form-3">
            <p class="clearfix">
                <label for="login">Логин</label>
                <input type="text" name="j_login" id="login" placeholder="Логин">
            </p>
            <p class="clearfix">
                <label for="password">Пароль</label>
                <input type="password" name="j_password" id="password" placeholder="Пароль">
            </p>
            <p class="clearfix">
                <input type="checkbox" name="remember" id="remember">
                <label for="remember">Запомнить меня</label>
            </p>
            <p class="clearfix">
                <input type="submit" name="submit" value="Войти">
            </p>
            <p align="center"><a href="/register">
                <label for="register">Register new user</label></a></p>
            <c:if test="${param.error ne null}">
                <p align="center" class="clearfix">
                        <label for="wrong">Wrong login or password!</label></p>
            </c:if>
            <c:if test="${param.logout ne null}">
                <p align="center" class="clearfix">
                        <label for="chao">Chao!</label></p>
            </c:if>
        </form>
    </div>
    <style>
        <%@include file='css/style.css' %>
    </style>
</body>

</html>