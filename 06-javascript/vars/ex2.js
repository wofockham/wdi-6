/*
Forgot how old someone is? Calculate it!

Store the current year in a variable.
Store their birth year in a variable.
Calculate their 2 possible ages based on the stored values.
Output them to the screen like so: "They are either NN or NN", substituting the values.
*/

var currentYear = 2014;
var birthYear = 1904;

var ageBirthday = currentYear - birthYear;
var ageUnbirthday = ageBirthday - 1;

var message = "They are either " + ageBirthday + " or " + ageUnbirthday;

console.log(message);
