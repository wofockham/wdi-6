var app = {};
app.Views = {};

app.BlogRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost',
    '*anythingElse': 'pageNotFound'
  },

  index: function () {
    var appView = new app.Views.AppView();
    appView.render();
  },

  getPost: function (id) {
    console.log('getPost page for', id);
  },

  pageNotFound: function () {
    // TODO: Redirect to the homepage
    console.log('page not found');
  }
});


app.Views.AppView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    var template = $('#appView').html();
    this.$el.html( template );
  },
  render: function () {}
});



$(document).ready(function () {
  app.router = new app.BlogRouter();
  Backbone.history.start();
});