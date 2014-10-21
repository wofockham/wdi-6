$(document).ready(function () {
  $('#search').on('click', searchFlickr);
  $('#clear').on('click', clearPhotos);
  $(window).on('scroll', maybeLoad);
});

var requestInProgress = false;

var maybeLoad = function () {
  if (requestInProgress) {
    return; // Abort!
  }

  var scrollTop = $(window).scrollTop();
  var docHeight = $(document).height();
  var windowHeight = $(window).height();

  if (scrollTop > docHeight - (3 * windowHeight)) {
    searchFlickr();
  }
};

var clearPhotos = function () {
  $('#images').empty();
};

var searchFlickr = function (event) {
  var query = $('#query').val();
  var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';
  requestInProgress = true;

  $.getJSON(flickrUrl, {
    method: 'flickr.photos.search',
    api_key: '2f5ac274ecfac5a455f38745704ad084',
    text: query,
    format: 'json'
  }, processImages);
};

var processImages = function (result) {
  requestInProgress = false;

  if (result.stat != 'ok') {
    return;
  }

  _(result.photos.photo).each(function (photo) {
    // https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
    var url = [
      'https://farm',
      photo.farm,
      '.staticflickr.com/',
      photo.server,
      '/',
      photo.id,
      '_',
      photo.secret,
      '_q.jpg'
    ].join('');

    $('<img>', {
      src: url
    }).appendTo('#images');

  });
};




