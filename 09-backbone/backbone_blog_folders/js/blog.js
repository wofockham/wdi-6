$(document).ready(function () {
  app.posts = new app.Collections.Posts([
    new app.Models.Post({id: 1, slug: 'first-post', title: 'First post', content: 'This is the first'}),
    new app.Models.Post({id: 2, slug: 'second-post', title: 'Second post', content: 'This is the second'}),
    new app.Models.Post({id: 3, slug: 'third-post', title: 'Third post', content: 'This is the third'}),
    new app.Models.Post({id: 4, slug: 'fourth-post', title: 'Fourth post', content: 'THIS IS NUMBER FOUR'})
  ]);

  app.router = new app.BlogRouter();
  Backbone.history.start();
});