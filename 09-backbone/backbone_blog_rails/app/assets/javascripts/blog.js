$(document).ready(function () {
  if ($('#main').length === 0) {
    return;
  };

  app.posts = new app.Collections.Posts();

  app.posts.fetch().done(function () {
    app.router = new app.BlogRouter();
    Backbone.history.start();
  });

  // This should all be in a backbone view.
  $('#new_post').on('submit', function (event) {
  });

});
