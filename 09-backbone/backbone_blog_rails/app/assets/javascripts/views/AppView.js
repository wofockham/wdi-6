var app = app || {};
app.Views = app.Views || {};

app.Views.AppView = Backbone.View.extend({
  el: '#main',
  events: {
    'click #newPost': 'newPost'
  },
  initialize: function () {
    this.render();
  },
  render: function () {
    var template = $('#appView').html();
    this.$el.html( template );

    this.collection.each(function (post) {
      var view = new app.Views.PostListView({model: post});
      view.render();
    });
  },
  newPost: function (event) {
    console.log('new post')
    event.preventDefault();
    app.router.navigate('posts/new', {trigger: true});
  }
});
