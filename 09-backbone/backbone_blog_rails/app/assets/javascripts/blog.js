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
    event.preventDefault();

    var newPost = new app.Models.Post();

    newPost.set('title', $('#post_title').val());
    newPost.set('slug', $('#post_slug').val());
    newPost.set('content', $('#post_content').val());

    newPost.save().done(function () {
      app.posts.fetch().done(function () {
        var appView = new app.Views.AppView({collection: app.posts});
        appView.render();
      });
    });

    this.reset();
  });

});
