$(document).ready(function () {
  $.getJSON('/beverages.json').done(function (beverageData) {
    var coffee = _.zip(_.range(beverageData.length), _(beverageData).pluck('coffee'));
    var water = _.zip(_.range(beverageData.length), _(beverageData).pluck('water'));
    var beer = _.zip(_.range(beverageData.length), _(beverageData).pluck('beer'));
    var whiskey = _.zip(_.range(beverageData.length), _(beverageData).pluck('whiskey'));

    $.plot($('#hydration-week'), [
      { label: 'coffee', data: coffee },
      { label: 'water', data: water },
      { label: 'beer', data: beer },
      { label: 'whiskey', data: whiskey }
    ]);
  });
});

$(document).ready(function () {
  $.plot($("#placeholder"), [ [[0, 0], [1, 1]] ], { yaxis: { max: 1 } });
});
