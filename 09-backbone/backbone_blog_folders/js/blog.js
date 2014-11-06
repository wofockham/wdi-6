$(document).ready(function () {
  app.posts = new app.Collections.Posts([
    new app.Models.Post({id: 1, title: 'First post', content: 'This is the first'}),
    new app.Models.Post({id: 2, title: 'Second post', content: 'This is the second'}),
    new app.Models.Post({id: 3, title: 'Third post', content: 'This is the third'}),
    new app.Models.Post({id: 4, title: 'Fourth post', content: 'THIS IS NUMBER FOUR'})
  ]);

  app.router = new app.BlogRouter();
  Backbone.history.start();
});