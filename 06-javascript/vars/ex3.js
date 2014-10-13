/*
Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!

Store your current age into a variable.
Store a maximum age into a variable.
Store an estimated amount per day (as a number).
Calculate how many you would eat total for the rest of your life.
Output the result to the screen like so: "You will need NN to last you until the ripe old age of X".
*/

var age = 75;
var maxAge = 112;
var amountPerDay = 12;

var yearsRemaining = maxAge - age;
var daysRemaining = yearsRemaining * 365.25;
var lifetimeSupply = daysRemaining * amountPerDay;

var message = "You will need " + lifetimeSupply + " to last you until the ripe old age of " + maxAge;

console.log(message);

