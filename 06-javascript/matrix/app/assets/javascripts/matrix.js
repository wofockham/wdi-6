$(document).ready(function () {
  $('#add_number').on('click', addNumber);
  $('#square').on('click', square);
});

var numbers = [];

var addNumber = function () {
  var number = parseInt( $('#number').val() );
  numbers.push(number);

  var $box = $('<div></div>').addClass('box');
  $box.text( number );
  $('#boxes').prepend($box);

  $('#number').val('').focus();
};