var app = app || {};
app.Views = app.Views || {};

app.Views.PostNew = Backbone.View.extend({
  el: '#main',
  events: {
    'submit form': 'createPost'
  },
  initialize: function () {},
  render: function () {
    var template = $('#postNewView').html();
    this.$el.html(template);
  },
  createPost: function (event) {
    event.preventDefault();

    var newPost = new app.Models.Post();

    newPost.set('title', $('#post_title').val());
    newPost.set('slug', $('#post_slug').val());
    newPost.set('content', $('#post_content').val());

    newPost.save().done(function () {
      app.posts.add(newPost);
      app.router.navigate('', {trigger: true});
    });
  }
});