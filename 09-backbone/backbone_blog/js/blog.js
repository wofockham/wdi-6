var app = {};
app.Views = {};
app.Models = {};
app.Collections = {};

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


app.Models.Post = Backbone.Model.extend({
  defaults: {
    title: 'Untitled post',
    content: 'Your ad here'
  }
});

app.Collections.Posts = Backbone.Collection.extend({
  model: app.Models.Post
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
  app.posts = new app.Collections.Posts([
    new app.Models.Post({id: 1, title: 'First post', content: 'This is the first'}),
    new app.Models.Post({id: 2, title: 'Second post', content: 'This is the second'}),
    new app.Models.Post({id: 3, title: 'Third post', content: 'This is the third'}),
    new app.Models.Post({id: 4, title: 'Fourth post', content: 'THIS IS NUMBER FOUR'})
  ]);

  app.router = new app.BlogRouter();
  Backbone.history.start();
});