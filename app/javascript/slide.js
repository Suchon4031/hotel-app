// $(document).ready(function() {
  $(window).on('load', function() {
  $('.hotel-show-image').slick({
    arrows: true,
    dots: true,
    appendDots: $(".dots"),
    speed: 1000,
    slidesToShow: 1,
    slidesToScroll: 1,
    centerMode: true,
    variableWidth: true,
  });
});
