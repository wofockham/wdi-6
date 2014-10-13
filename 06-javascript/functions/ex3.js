/*
Write a function named calculateSupply that:
takes 2 arguments: age, amount per day.
calculates the amount consumed for rest of the life (based on a constant max age). outputs the result to the screen like so: "You will need NN to last you until the ripe old age of X"
Call that function three times, passing in different values each time.
Bonus: Accept floating point values for amount per day, and round the result to a round number.
*/

var calculateSupply = function(age, amountPerDay) {
  var maxAge = 120;
  var yearsRemaining = maxAge - age;
  var daysRemaining = yearsRemaining * 365.25; // Including leap years.
  var supply = Math.round(amountPerDay * daysRemaining);

  console.log('You will need ' + supply + ' to last you until the ripe old age of ' + age);
};

calculateSupply(15, 100);
calculateSupply(100, 1.7);
calculateSupply(121, 7);

