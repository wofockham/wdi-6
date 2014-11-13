$(document).ready(function () {
  $.getJSON('/beverages.json').done(function (beverageData) {
    new Morris.Line({
      element: 'beverage-week-graph',
      data: beverageData,
      xkey: 'day',
      ykeys: ['coffee', 'water', 'beer', 'whiskey'],
      labels: ['coffee', 'H2O', 'beer', 'whiskey'],
      lineColors: ['#82632A', '#3F3FC4', '#F5C816', '#E0CB90'],
      parseTime: false,
      resize: true,
      smooth: false
    });
  }).done(function (beverageData) {
    var data = beverageData[0];
    new Morris.Donut({
      element: 'beverage-day-graph',
      data: [
        {label: 'Coffee', value: data.coffee},
        {label: 'H2O', value: data.water},
        {label: 'Beer', value: data.beer},
        {label: 'Whiskey', value: data.whiskey}
      ],
      colors: ['#82632A', '#3F3FC4', '#F5C816', '#E0CB90']
    });
  });
});

$(document).ready(function () {
  new Morris.Line({
    // ID of the element in which to draw the chart.
    element: 'myfirstchart',
    // Chart data records -- each entry in this array corresponds to a point on
    // the chart.
    data: [
      { year: '2008', value: 20 },
      { year: '2009', value: 10 },
      { year: '2010', value: 5 },
      { year: '2011', value: 5 },
      { year: '2012', value: 20 }
    ],
    // The name of the data record attribute that contains x-values.
    xkey: 'year',
    // A list of names of data record attributes that contain y-values.
    ykeys: ['value'],
    // Labels for the ykeys -- will be displayed when you hover over the
    // chart.
    labels: ['Value']
  });
});


