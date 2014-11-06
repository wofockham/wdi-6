var app = app || {};
app.Models = app.Models || {};

app.Models.Post = Backbone.Model.extend({
  urlRoot: '/posts',
  defaults: {
    slug: 'untitled-post',
    title: 'Untitled post',
    content: 'Your ad here'
  }
});
