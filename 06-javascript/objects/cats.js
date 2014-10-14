var catFactory = function (age, furColor) {
  var cat = {
    age: age,
    furColor: furColor,
    meow: function() {
      console.log('meowww');
    },
    eat: function(food) {
      console.log('Yum, I love ' + food);
    },
    sleep: function(numMinutes) {
      for (var i = 0; i < numMinutes; i++) {
        console.log('z');
      }
    },
    allergicTo: function(allergen) {
      console.log('I am allergic to ' + allergen);
    }
  }

  return cat;
};

var lizzieTheCat = catFactory(18, 'gray');
var demonTheCat = catFactory(2, 'black');
var whiskersTheCat = catFactory(30, 'bald');

var age = prompt('What is the age of the cat?');
var furColor = prompt('What is the furcolor of the cat?');
var customKitty = catFactory(age, furColor);
console.log(customKitty);


