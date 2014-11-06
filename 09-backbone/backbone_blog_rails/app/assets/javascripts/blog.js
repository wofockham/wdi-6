$(document).ready(function () {
  app.posts = new app.Collections.Posts();

  app.posts.fetch().done(function () {
    app.router = new app.BlogRouter();
    Backbone.history.start();
  });

});
