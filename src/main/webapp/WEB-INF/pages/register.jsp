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
<div align="center" class="main">
    <p><img src="https://image.freepik.com/free-photo/_23-2147734216.jpg" alt="img"></p>
    <c:url value="/newuser" var="regUrl" />
    <form action="${regUrl}" method="POST" class="form-3">
        <p class="clearfix">
            <label for="login">Логин</label>
            <input type="text" name="login" value="${login}" placeholder="Логин">
        </p>
        <%--Login:<br/><input type="text" name="login" value="${login}"><br/>--%>
        <p class="clearfix">
            <label for="password">Пароль</label>
            <input type="password" name="password" placeholder="Пароль">
        </p>
        <p class="clearfix">
            <label for="email">email</label>
            <input class="inp" type="email" name="email" placeholder="email">
        </p>
        <%--E-mail:<br/><input type="text" name="email"><br/>--%>
        <p class="clearfix">
            <label for="Phone">Phone</label>
            <input class="inp" type="tel" name="Phone" placeholder="Phone">
        </p>
        <%--Phone:<br/><input type="text" name="phone"><br/>--%>
        <input class="inp" type="submit" />
        <c:url value="/logout" var="logoutUrl" />
        <p class="clearfix" align="center">
            <label for="LOGOUT"> <a href="${logoutUrl}">LOGOUT</a></label>
        </p>
        <c:if test="${exists ne null}">
            <p>User already exists!</p>
        </c:if>
    </form>
</div>
<style>
    <%@include file='css/style2.css' %>
</style>
</body>
</html>
