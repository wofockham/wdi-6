var app = app || {};
app.Collections = app.Collections || {};

app.Collections.Posts = Backbone.Collection.extend({
  model: app.Models.Post
});