$(document).ready(function () {
  $('h1').text('Zombie hotdogs');
  $('#bill').fadeIn(5000);

  setInterval(function () {
    $.getJSON('/numbers').done(function (results) {
      var ballTemplate = $('#ballTemplate').html();
      var ballHTML = Handlebars.compile(ballTemplate);
      $('#lotto').hide().empty();
      for (var i = 0; i < results.length; i++) {
        var ballString = ballHTML( { ball: results[i] } );
        $('#lotto').append(ballString);
      }
      $('#lotto').fadeIn();
    });
  }, 3000);

  var oldYeller = function (words) {
    var yellyWords = words.split(' ').join('').toUpperCase() + '!!!';
    return yellyWords;
  };

  var patriotism = oldYeller('god bless america');
  $('h1').text(patriotism);
});

