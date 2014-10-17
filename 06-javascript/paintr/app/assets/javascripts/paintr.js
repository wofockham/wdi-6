var addColor = function () {
  var color = $('#color').val();
  var $box = $('<div/>');
  $box.addClass('box');
  $box.css('background-color', color);
  $('#colors').prepend($box);
};

var setColor = function () {
  var color = $(this).css('background-color');
  $('#current_color').css('background-color', color);
};

var paintPixel = function () {
  var color = $('#current_color').css('background-color');
  $(this).css('background-color', color);
};

$(document).ready(function () {
  $('#add_color').on('click', addColor);
  $('#colors').on('click', '.box', setColor); // Delegation!
  $('#canvas').on('mouseover', '.pixel', paintPixel);

  for(var i = 0; i < 1000; i++) {
    $('#canvas').append('<div class="pixel"/>');
  }
});
