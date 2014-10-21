$(document).ready(function () {
  $('#search').on('click', searchFlickr);
});

var searchFlickr = function (event) {
  var query = $('#query').val();
  var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';
  $.getJSON(flickrUrl, {
    method: 'flickr.photos.search',
    api_key: '2f5ac274ecfac5a455f38745704ad084',
    text: query,
    format: 'json'
  }, processImages);
  console.log(flickrUrl);
};

var processImages = function (result) {
  debugger;
};