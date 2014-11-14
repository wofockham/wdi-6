$(document).ready(function () {
  $.getJSON('/beverages.json').done(function (beverageData) {
    debugger;
  });
});

$(document).ready(function () {
  $.plot($("#placeholder"), [ [[0, 0], [1, 1]] ], { yaxis: { max: 1 } });
});
