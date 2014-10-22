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

  $('#getDemo').on('click', function () {
    $.get('/about').done(function (htmlResults) {
      $p = $(htmlResults).find('p');
      $('#getOutput').html( $p );
    });
  });

  $('#getJSONDemo').on('click', function () {
    $.getJSON('/tasks').done(function (tasks) {
      console.log(tasks, tasks.length);
    });
  });

  $('#loadDemo').on('click', function () {
    $('#loadOutput').load('/time');
  });

});
