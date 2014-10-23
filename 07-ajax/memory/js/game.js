var CARDS = 10;

$(document).ready(function () {

  setupGame();

  $('#restart').on('click', setupGame);

  $('#game').on('click', '.card-container', function () {
    var $this = $(this);

    if ($this.is('.matched')) {
      return; // Card has already been matched.
    }

    if ($('.flipped').length > 1) {
      return; // Too many cards currently flipped.
    }

    $this.toggleClass('flipped');

    if ($this.is('.flipped')) { // Card has been exposed.
      // Bump up the attempt counter.
      var $attempts = $('#attempts');
      $attempts.text( 1 + parseInt($attempts.text()) );

      // If two cards have been flipped we can check for the winner.
      if ($('.flipped').length > 1) {
        // Get the values of all the flipped cards.
        var values = $('.flipped').map(function (i, card) {
          return $.trim($(card).find('.number').text());
        }).get();

        // If there is only one unique value in the array we have a winner!
        if (_(values).uniq().length === 1) {
          $('.flipped').toggleClass('flipped matched'); // Winner
        } else {
          // Wrongissimo! Revert the cards after a moment.
          setTimeout(function () {
            $('.flipped').removeClass('flipped');
          }, 1000);
        }
      }
    }

  });
});

var setupGame = function () {
  $('#game').empty();
  $('#attempts').text(0);

  var cardCount = parseInt($('#cardCount').val()) || CARDS;

  var numbers = [];

  // Assemble an array of matching pairs of cards, with the number to appear in each.
  _.times(Math.round(cardCount / 2), function (i) {
    numbers.push(1 + i);
    numbers.push(1 + i);
  });

  // Shuffle the deck and append them to the page.
  numbers = _(numbers).shuffle();
  _(numbers).each(function (i) {
    var template = $('#cardTemplate').html();
    var cardHTML = Handlebars.compile(template);

    $('#game').append( cardHTML({number: i}) );
  });
};


