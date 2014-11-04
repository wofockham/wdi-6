var cup = {
  field: ["Admire Rakti", "Fawkner", "Red Cadeaux", "Protectionist", "Seismos", "Junoob", "Royal Diamond", "Gatewood", "Mutual Regard", "Who Shot Thebarman", "Willing Foe", "My Ambivalent", "Precedence", "Brambles", "Mr Oceirin", "Au Revoir", "Lidari", "Opinion", "Araldo", "Lucia Valentina", "Unchain My Heart", "Signoff"],

  field2: null,
  field5: null,

  sweep2: {},
  sweep5: {},

  init: function () {
    cup.reload(); // Fetch a previously saved dataset, if available.

    // Create new copies of the field for each of our sweeps.
    this.field2 = _(this.field).shuffle();
    this.field5 = _(this.field).shuffle();

    cup.showField();
    cup.showSweepsRemaining();
    cup.showPrizes();
    cup.showSweepsBought();
  },

  save: function () {
    var cupString = JSON.stringify(cup);
    localStorage.setItem('cup', cupString);
    console.log('saved');
  },

  reload: function () {
    var cupString = localStorage.getItem('cup');
    if (! cupString) {
      return; // Nothing found in local storage.
    }

    var cupCopy = JSON.parse(cupString);

    // Merge saved data into cup object.
    cup = _.extend(cup, cupCopy);
  },

  reset: function () {
    localStorage.removeItem('cup');
    window.location.reload();
  },

  showSweepsBought: function () {
    var $sweep2 = $('.sweep2 ul').empty();
    _(this.sweep2).each(function (gambler, horse) {
      var $li = $('<li/>');
      $li.text([gambler, ':', horse].join(' '));
      $sweep2.append($li);
    });

    var $sweep5 = $('.sweep5 ul').empty();
    _(this.sweep5).each(function (gambler, horse) {
      var $li = $('<li/>');
      $li.text([gambler, ':', horse].join(' '));
      $sweep5.append($li);
    });
  },

  showSweepsRemaining: function () {
    var stakes2 = this.field2.length;
    var stakes5 = this.field5.length;

    $('#stakes2').text(stakes2);
    $('#stakes5').text(stakes5);
  },

  showField: function () {
    _(this.field).each(function (horse) {
      var $li = $('<li/>');
      $li.text(horse);
      $('.field ul').append($li);
    });
  },

  showPrizes: function () {
    var currency = function (amount) {
      return '$' + amount.toFixed(2);
    };

    var pool2 = this.field.length * 2;
    var pool5 = this.field.length * 5;

    var first2 = Math.ceil(0.5 * pool2);
    var second2 = Math.ceil(0.3 * pool2);
    var wooden2 = 2;
    var third2 = pool2 - first2 - second2 - wooden2;

    $('#prize2first').text(currency(first2));
    $('#prize2second').text(currency(second2));
    $('#prize2third').text(currency(third2));
    $('#prize2wooden').text(currency(wooden2));

    var first5 = Math.ceil(0.5 * pool5);
    var second5 = Math.ceil(0.3 * pool5);
    var wooden5 = 5;
    var third5 = pool5 - first5 - second5 - wooden5;

    $('#prize5first').text(currency(first5));
    $('#prize5second').text(currency(second5));
    $('#prize5third').text(currency(third5));
    $('#prize5wooden').text(currency(wooden5));
  },

  highlightHorse: function (horse) {
    $('.field ul .active').removeClass('active');
    $('.field ul').find('li:contains(' + horse + ')').addClass('active');
  },

  placeBet: function () {
    var $this = $(this);
    var gambler = $.trim($('#gambler').val());

    $('#gambler').val('').focus(); // Clear and focus the input.

    if (! gambler) { // You must enter a name to buy a stake.
      return;
    }

    if ($this.is('#bet2')) {
      cup.buyStake2(gambler);
    } else {
      cup.buyStake5(gambler);
    }

    cup.save(); // Persist the current data to localStorage for safety.

    cup.showSweepsBought();
  },

  buyStake2: function (gambler) {
    var horse = this.field2.pop();
    if (! horse) {
      $('#bet2').attr('disabled', 'disabled');
      alert('Sold out');
      return;
    }

    this.sweep2[horse] = gambler;
    $('#purchase').text([gambler, 'bought', horse].join(' '));
    this.highlightHorse(horse);
    this.showSweepsRemaining();
  },

  buyStake5: function (gambler) {
    var horse = this.field5.pop();
    if (! horse) {
      $('#bet5').attr('disabled', 'disabled');
      alert('Sold out');
      return;
    }

    this.sweep5[horse] = gambler;
    $('#purchase').text([gambler, 'bought', horse].join(' '));
    this.highlightHorse(horse);
    this.showSweepsRemaining();
  },
};


$(document).ready(function () {
  cup.init();

  $('#bet2, #bet5').on('click', cup.placeBet);
});

