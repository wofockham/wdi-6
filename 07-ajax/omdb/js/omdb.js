$(document).ready(function () {
  $.ajax('http://www.omdbapi.com/?t=True%20Grit&y=1969').done(function (result) {
    console.log(result);
  });
});