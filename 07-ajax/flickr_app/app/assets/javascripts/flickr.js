$(document).ready(function () {
  $('#search').on('click', searchFlickr);
  $('#clear').on('click', clearPhotos);
  $(window).on('scroll', maybeLoad);
});

// Tracks whether a request is already underway, to prevent repeated requests.
var requestInProgress = false;
var currentPage = 1;
var endOfResults = false;

// Lazy loads more results when the user approaches the bottom of the page.
var maybeLoad = function () {
  if (requestInProgress || endOfResults) {
    return; // Abort!
  }

  var scrollTop = $(window).scrollTop();
  var docHeight = $(document).height();
  var windowHeight = $(window).height();

  // Search only proceeds if we're near the end of the document.
  if (scrollTop > docHeight - (3 * windowHeight)) {
    searchFlickr();
  }
};

var clearPhotos = function () {
  currentPage = 1; // Reset the page number.
  endOfResults = false;
  $('#images').empty();
};

var searchFlickr = function (event) {
  var query = $('#query').val();
  var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';
  requestInProgress = true; // Track that a request is currently in progress.

  $.getJSON(flickrUrl, {
    method: 'flickr.photos.search',
    api_key: '2f5ac274ecfac5a455f38745704ad084',
    text: query,
    format: 'json',
    page: currentPage,
  }, processImages);
};

var processImages = function (result) {
  requestInProgress = false; // Request complete, a new request may now occur.
  currentPage += 1;

  if (result.photos.photo.length === 0) {
    endOfResults = true;
  }

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
