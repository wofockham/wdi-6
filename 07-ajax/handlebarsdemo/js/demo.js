var bros = [
  {
    name: 'Groucho',
    instrument: 'Guitar'
  },
  {
    name: 'Chico',
    instrument: 'Piano'
  }
];

$(document).ready(function () {
  var source = $('#brotherTemplate').html();
  var brotherHTML = Handlebars.compile(source);

  $.each(bros, function(index, brother) {
    $('#bros').append( brotherHTML(brother) );
  });
});
