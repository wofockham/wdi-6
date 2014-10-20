$(document).ready(function () {
  $('#add_number').on('click', addNumber);
  $('#square').on('click', square);
  $('#calculate').on('click', calculate);
});

var numbers = [];

var addNumber = function () {
  var number = parseInt( $('#number').val() );
  numbers.push(number);

  showBox(number);

  $('#number').val('').focus();
};

var square = function () {
  var squareValue = function (i) {
    return i * i;
  };

  numbers = _(numbers).map(squareValue);
  showBoxes();
};

var calculate = function () {
  numbers = _(numbers).map(funkyCalc);
  showBoxes();
};

var funkyCalc = function (i) {
  var equation = $('#number').val();
  return eval(equation);
};


var showBox = function (i) {
  var $box = $('<div></div>').addClass('box');
  $box.text( i );
  $('#boxes').prepend($box);
};

var showBoxes = function () {
  emptyBoxes();
  _(numbers).each(showBox);
};

var emptyBoxes = function () {
  $('#boxes').empty();
};