$(document).ready(function () {
  var numbers = [1, 1, 2, 2, 3, 3];
  numbers = _(numbers).shuffle();

  console.log(numbers);

  _(numbers).each(function (i) {
    var template = $('#cardTemplate').html();
    var cardHTML = Handlebars.compile(template);

    $('body').append( cardHTML({number: i}) );
  });

  $('.card-container').on('click', function () {
    $(this).toggleClass('flipped');
  });
});
