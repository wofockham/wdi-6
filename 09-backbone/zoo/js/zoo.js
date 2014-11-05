var Animal = Backbone.Model.extend({
  defaults: {
    type: 'animal',
    ecosystem: '',
    stripes: 0
  },

  initialize: function () {
    console.log('I am an animal');
    this.on('change:type', function (model) {
      var type = model.get('type');
      console.log('I am now a', type);
    });
  }
});


var Zoo = Backbone.Collection.extend({
  model: Animal
});


var ZooView = Backbone.View.extend({
  el: '#main',
  initialize: function () {},
  events: {
    'click h2': 'greeting'
  },
  render: function () {
    var view = this;
    view.$el.empty();
    view.$el.append('<h2>Our Menagerie</h2>');

    var animalIndexSource = $('#animalIndex').html();
    var animalIndexHTML = _.template(animalIndexSource);

    view.collection.each(function (animal) {
      var animalHTML = animalIndexHTML(animal.toJSON());
      view.$el.append(animalHTML);
    });
  },
  greeting: function () {
    alert('you clicked the heading');
  }
});

var animal1 = new Animal({id: 1, type: 'giraffe', ecosystem: 'savannah'});
var animal2 = new Animal({id: 2, type: 'zebra', ecosystem: 'savannah'});
var animal3 = new Animal({id: 3, type: 'frog', ecosystem: 'pond'});

var weBoughtAZoo = new Zoo([animal1, animal2, animal3]);
console.log(weBoughtAZoo.models);


var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'animals/:id': 'viewAnimal',
  },
  index: function () {
    console.log('you reached the root page');
    var zooView = new ZooView({collection: weBoughtAZoo});
    zooView.render();
  },
  viewAnimal: function (id) {
    $('#main').empty();
    console.log('you are viewing animal', id);
  }
});

$(document).ready(function () {
  var appRouter = new AppRouter();
  Backbone.history.start();
});









