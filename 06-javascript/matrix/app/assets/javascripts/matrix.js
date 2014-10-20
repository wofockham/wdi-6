$(document).ready(function () {
  $('#add_number').on('click', matrix.addNumber);
  $('#square').on('click', matrix.square);
  $('#calculate').on('click', matrix.calculate);
  $('#start').on('click', matrix.startSpew);
  $('#stop').on('click', matrix.stopSpew);
});

var matrix = {};

matrix.numbers = [];
matrix.spewTimer;

matrix.startSpew = function () {
  matrix.stopSpew();
  matrix.spewTimer = setInterval(matrix.generateRandom, 100);
};

matrix.stopSpew = function () {
  clearInterval(matrix.spewTimer);
};

matrix.generateRandom = function () {
  var n = _.random(1000);
  matrix.numbers.push(n);
  matrix.showBox(n);
};

matrix.addNumber = function () {
  var number = parseInt( $('#number').val() );
  matrix.numbers.push(number);

  matrix.showBox(number);

  $('#number').val('').focus();
};

matrix.square = function () {
  var squareValue = function (i) {
    return i * i;
  };

  matrix.numbers = _(matrix.numbers).map(squareValue);
  matrix.showBoxes();
};

matrix.calculate = function () {
  matrix.numbers = _(matrix.numbers).map(matrix.funkyCalc);
  matrix.showBoxes();
};

matrix.funkyCalc = function (i) {
  var equation = $('#number').val();
  return eval(equation);
};


matrix.showBox = function (i) {
  var $box = $('<div></div>').addClass('box');
  $box.text( i );
  $('#boxes').prepend($box);
};

matrix.showBoxes = function () {
  matrix.emptyBoxes();
  _(matrix.numbers).each(matrix.showBox);
};

matrix.emptyBoxes = function () {
  $('#boxes').empty();
};
