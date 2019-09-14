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
