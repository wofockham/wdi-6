var app = app || {};
app.Views = app.Views || {};

app.Views.PostListView = Backbone.View.extend({
  tagName: 'li',
  events: {
    'click': 'viewPost'
  },
  initialize: function () {},
  render: function () {
    var template = $('#postListView').html();
    var postListHTML = Handlebars.compile(template);

    this.$el.html(postListHTML(this.model.toJSON()));
    $('#posts').prepend(this.el); // Reverse chronological order.
  },
  viewPost: function () {
    app.router.navigate('posts/' + this.model.get('id'), {trigger: true});
  }
});
