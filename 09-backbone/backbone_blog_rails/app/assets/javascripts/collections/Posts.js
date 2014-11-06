var app = app || {};
app.Collections = app.Collections || {};

app.Collections.Posts = Backbone.Collection.extend({
  url: '/posts',
  model: app.Models.Post
});