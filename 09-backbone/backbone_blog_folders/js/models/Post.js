var app = app || {};
app.Models = app.Models || {};

app.Models.Post = Backbone.Model.extend({
  idAttribute: 'slug',
  defaults: {
    slug: 'untitled-post',
    title: 'Untitled post',
    content: 'Your ad here'
  }
});
