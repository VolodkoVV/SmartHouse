$(document).ready(function(){
    $('.slider').slick({
      autoplay: true,
      autoplaySpeed: 2000,
      infinite: true,
      prevArrow: '<button type="button" class="prev"></button>',
      nextArrow:'<button type="button" class="next"></button>',
      appendArrows: $(".cont"),
    });
  });
  $('.slider-1').slick({
    autoplay: true,
    autoplaySpeed: 2500,
    arrows:false,
    dots:true,
    infinite: true,
  });
  window.onload = function(){
    let btn = document.querySelector('.btn-mob');
    let list = document.querySelector('.drop-list');
 
    btn.addEventListener('click', function(){
        list.classList.toggle('hidden');
    });
 }