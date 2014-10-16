$(document).ready(function () {
  var $colr = $('#colr');

  var rgb;

  // Move to change the colour.
  $(window).mousemove(function (event) {
    var red = Math.round((event.pageX / window.innerWidth) * 255);
    var green = Math.round((event.pageY / window.innerHeight) * 255);
    var blue = Math.round((red + green) / 2);

    rgb = 'rgb(' + [red, green, blue].join(',') + ')';

    $('body').css('background-color', rgb);
  }).trigger('mousemove');

  // Click to "select" the current colour.
  $(window).click(function (event) {
    $colr.val(rgb).focus();
  });

});