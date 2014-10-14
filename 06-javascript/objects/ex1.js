/*
Never forget another recipe!

Create an object to hold information on your favorite recipe. It should have properties for title (a string), servings (a number), and ingredients (an array of strings).

On separate lines (one console.log statement for each), log the recipe information so it looks like:

Mole
Serves: 2
Ingredients:
cinnamon
cumin
cocoa
*/

var hotdogs = {
  title: 'Dessert Hotdogs',
  servings: 2,
  ingredients: [
    'Hotdog buns',
    'Frankfurters',
    'Whipped cream',
    'Mustard',
    'Cherries'
  ]
};

console.log(hotdogs);

console.log(hotdogs.title);
console.log('Servings', hotdogs.servings);
console.log('Ingredients:');
for (var i = 0; i < hotdogs.ingredients.length; i++) {
  console.log( hotdogs.ingredients[i] );
}





