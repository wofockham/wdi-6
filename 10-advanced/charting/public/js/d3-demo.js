$(document).ready(function () {

  var nums = [80, 53, 125, 200, 28, 97, 100, 100, 100];

  var svg = d3.select('body').append('svg').attr('width', 500).attr('height', 200);

  var bars = svg.selectAll('rect').data(nums);

  bars.enter().append('rect');

  bars.attr('width', 20).attr('height', 20)

  bars.attr('x', function (data, index) {
    return 30 * index;
  });

  bars.attr('height', function (data) {
    return data;
  });

  bars.attr('y', function (data) {
    return 200 - data;
  });

});