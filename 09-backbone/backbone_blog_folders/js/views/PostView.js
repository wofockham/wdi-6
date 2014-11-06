var app = app || {};
app.Views = app.Views || {};

app.Views.PostView = Backbone.View.extend({
  el: '#main',
  initialize: function () {},
  render: function () {
    var template = $('#postView').html();
    var postHTML = Handlebars.compile(template);

    this.$el.html(postHTML(this.model.toJSON()));
  }
});
