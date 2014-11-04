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

var animal1 = new Animal({type: 'giraffe', ecosystem: 'savannah'});
var animal2 = new Animal({type: 'zebra', ecosystem: 'savannah'});
var animal3 = new Animal({type: 'frog', ecosystem: 'pond'});

var weBoughtAZoo = new Zoo([animal1, animal2, animal3]);
console.log(weBoughtAZoo.models);