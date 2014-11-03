var cup = {
  field: ["Admire Rakti", "Cavalryman", "Fawkner", "Red Cadeaux", "Protectionist", "Seismos", "Junoob", "Royal Diamond", "Gatewood", "Mutual Regard", "Who Shot Thebarman", "Willing Foe", "My Ambivalent", "Precedence", "Brambles", "Mr Oceirin", "Au Revoir", "Lidari", "Opinion", "Araldo", "Lucia Valentina", "Unchain My Heart", "Signoff"],

  field2: null,
  field5: null,

  init: function () {
    // Create new copies of the field for each of our sweeps.
    this.field2 = _(this.field).shuffle();
    this.field5 = _(this.field).shuffle();

    cup.showField();
  },

  showField: function () {
    _(this.field).each(function (horse) {
      var $li = $('<li/>');
      $li.text(horse);
      $('.field ul').append($li);
    });
  }
};


$(document).ready(function () {
  cup.init();
});
