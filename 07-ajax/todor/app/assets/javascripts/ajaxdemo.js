$(document).ready(function () {
  $('#moviegetter').on('submit', function (event) {
    event.preventDefault();

    $.ajax('http://omdbapi.com/', {
      dataType: 'json',
      data: {
        t: $('#movietitle').val()
      }
    }).done(function (results) {
      $('#poster').attr('src', results.Poster);
    });
  });
});
