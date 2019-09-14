<%--
  Created by IntelliJ IDEA.
  User: Slavko
  Date: 28.08.2019
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Smart House</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<header>
    <div class="bg">
        <div class="top-header content">
            <div class="lang-cur">
                <div class="lang-cur-it">
                    <span>Language:</span>
                    <button>English</button>
                </div>
                <div class="lang-cur-it">
                    <span>Login:</span>
                    <c:forEach var="s" items="${roles}">
                        <h3><c:out value="${s}" /></h3>
                    </c:forEach>
                </div>
            </div>
            <ul class="header-menu">
                <li>
                    <a href="#">Account</a>
                </li>
                <li>
                    <a href="#">Wishlist</a>
                </li>
                <li>
                    <a href="#">Checkout</a>
                </li>
                <li>
                    <a href="#">Sign Up</a>
                </li>
            </ul>
        </div>
    </div>
    <form action="${loginUrl}" method="POST">
    <div class="bottom-header content">
        <a href="/index" class="logo">Smart House</a>
        <nav>
            <button class="btn-mob"></button>
            <ul class="drop-list hidden">
                <li>
                    <a href="/index">Home</a>
                </li>
                <li>
                    <a href="/climat">Клімат-контроль</a>
                </li>
                <li>
                    <a href="#">Керування світлом</a>
                </li>
                <li>
                    <a href="/security">Безпека</a>
                </li>
                <li>
                    <a href="#">Аварії</a>
                </li>
            </ul>
        </nav>

        <form>
            <input class="inpt" type="search" placeholder="Search..">
            </form> </div></form> </header>
<div class="main-content flex-cont con">
<div class="glass">
    <h2>Керування світлом</h2>
    <p>Ефективне розпорядження світловими потоками не тільки приємно
        відчувається на Вашому гаманці, але робить більш приємним освітлення для
        очей людей і створює потрібну атмосферу.
        Ви можете змінити освітлення в спальні прямо зараз.</p>
</div>
    <div>
        <img src="http://www.radiomexanik.spb.ru/images/stories/Blog/umny_dom/svet/svet1.jpg">
    </div>
</div>
<aside class="main-aside">
    <div class="part-1">
        <div class="fg">Цікаве оновлення
        </div>
        <div class="part-2">
            <div class="slider-1">
                <input type="radio" name="switch" id="btn1" checked>
                <input type="radio" name="switch" id="btn2">
                <input type="radio" name="switch" id="btn3">

                <div class="switch">
                    <label for="btn1"></label>
                    <label for="btn2"></label>
                    <label for="btn3"></label>
                </div>

                <div class="slider-inner">
                    <div class="slides">
                        <div>
                            <mark class="mark1">Нова система безпеки</mark>
                            <img
                                    src="https://instrumental-ua.com/content/images/1/kamera-hikvision-ds-2cd2043g0-i-40458559874654.jpg">
                        </div>
                        <div>
                            <mark class="mark2">Нова система освітлення</mark>
                            <img src="http://radio1.news/files/image/06/74/08/-lg!eja.jpg">
                        </div>
                        <div>
                            <mark class="mark3">Smart House in smartphone</mark>
                            <img class="img1" src="https://cdn-st1.rtr-vesti.ru/vh/pictures/o/138/616/6.jpg">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="#"><button class="b-1">Check it</button></a>
</aside>
<footer>
    <div class="footer-2">
        <div class="footer-mid content">
            <div class="fb-social-plugin">
                <section>
                    <h3>Facebook</h3>
                    <img src="https://picua.org/images/2019/03/15/643a51f04c9c3caf7d4cac13eb977395.jpg"
                         alt="fb" /><br>
                    <p class="feec-text">facebook Social plugin</p>
                </section>
            </div>
            <div class="from-twitter">
                <section>
                    <h3>From twitter</h3>
                    <div class="twitter-cont">
                        <div class="img-twett"></div>
                        <div class="twitt-text">Якщо виникли проблеми, ви можете відправити нам листа і ми
                            відповімо якомога швидше! <a href="https://twitter.com">Технічна підтримка абонентів
                                в соц. мережі Twitter</a>
                        </div>
                    </div>
                </section>
            </div>
            <div class="info">
                <section>
                    <h3>Information</h3>
                    <ul>
                        <li><a href="#">Ми маємо на своєму рахунку</a></li>
                        <li><a href="#">нажаль мало проектів.</a></li>
                        <li><a href="#">Але вони всі зроблені дуже якісно.</a></li>
                        <li><a href="#">І всі клієнти задоволені.</a></li>
                    </ul>
                </section>
            </div>
            <div class="contact">
                <section>
                    <h3>Contact Us</h3>
                    <ul>
                        <li>Smart House</li>
                        <li>Media Data</li>
                        <li>Kyiv, Ukraine</li>
                        <li>+3 8093 038 57 51</li>
                        <li>volodko.vyacheslav@ukr.net</li>
                    </ul>
                    <div class="social-link"></div>
                    <button class="google"><a href="#"></a></button>
                    <button class="in"><a href="#"></a></button>
                    <button class="wifi"><a href="#"></a></button>
                    <button class="feec"><a href="https://www.facebook.com"></a></button>
            </div>
            </section>
        </div>
    </div>
    <div class="footer-4">
        <div class="footer-bot content">
            <div class="copyright">Copyright 2019 Author, All Rights Reserved.</div>
            <div class="link-footer">
                <a href="#">About Us</a><a href="#">Delivery & Returns</a><a href="#">Terms & Conditions</a><a
                    href="#">Contact Us</a>
            </div>
        </div>
    </div>
</footer>
<script src="<c:url value="/resources/js/jquery-ui-1.12.1.custom/jquery-ui.js" />"></script>
<script src="<c:url value="/resources/js/howler.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<script src="<c:url value="/resources/js/adp.js" />"></script>
<spring:url value="/resources/js/main.js" var="mainJs" />
<spring:url value="/resources/js/jquery-ui-1.12.1.custom/jquery-ui.js" var="jqJs" />
<spring:url value="/resources/js/howler.min.js" var="howlerJs" />
<spring:url value="/resources/js/adp.js" var="adpJs" />
<script src="${mainJs}"></script>
<script src="${jqJs}"></script>
<script src="${howlerJs}"></script>
<script src="${adpJs}"></script>
<link href="${pageContext.request.contextPath}/resources/js/adp.js" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/js/howler.min.js" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/js/jquery-ui-1.12.1.custom/jquery-ui.js" rel="stylesheet" >
<script src="/resources/js/howler.min.js"></script>
<script src="/resources/js/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="/resources/js/main.js"></script>
<script src="/resources/js/adp.js"></script>
<script>
    var info = document.getElementById('info');
    $(function () {

        //Сохраняем нужные элементы в перменных
        var slider = $('#slider'),
            tooltip = $('.tooltip');

        //Скрываем подсказку в начале
        tooltip.hide();

        //Вызываем слайдер
        slider.slider({
            //Конфигурация
            range: "min",
            min: 0,
            value: 0,


            start: function (event, ui) {
                tooltip.fadeIn('fast');
            },

            //Событие слайдреа
            slide: function (event, ui) { //При пермещении слайдера
                var value = slider.slider('value');
                info.innerHTML = value - 1;
                volume = $('.volume');
                volume.css('background', 'url(img/jpg/13.jpg)');

                tooltip.css('left', value).text(ui.value);  //Выравниваем подсказку соответственно

                if (value <= 2) {
                    volume.css('background', 'url(img/jpg/13.jpg)');
                }
                else if (value <= 25) {
                    volume.css('background-image', 'url(img/jpg/14.jpg)');
                }
                else if (value <= 75) {
                    volume.css('background-image', 'url(img/jpg/12.jpg)');
                }
                else {
                    volume.css('background-image', 'url(img/jpg/15.jpg)');
                };

            },

            stop: function (event, ui) {
                tooltip.fadeOut('fast');
            },
        });

    });

</script>
<style>
    <%@include file='css/main2.css' %>
    <%@include file='css/header.css' %>
    <%@include file='css/main-slider.css' %>
    <%@include file='css/main-content.css' %>
    <%@include file='css/aside.css' %>
    <%@include file='css/footer.css' %>
    <%@include file='css/resp.css' %>
    <%@include file='css/style.css' %>
    <%@include file='css/styles.css' %>
    <%@include file='css/der.css' %>
</style>
</body>
</html>

