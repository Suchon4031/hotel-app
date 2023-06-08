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
    autoplay: true,
    autoplaySpeed: 3000,
    pauseOnFocus: false,
    pauseOnHover: false,
  });
});