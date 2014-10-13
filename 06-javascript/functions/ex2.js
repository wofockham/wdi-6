/*
Write a function named calculateAge that:

takes 2 arguments: birth year, current year.
calculates the 2 possible ages based on those years. outputs the result to the screen like so: "You are either NN or NN"
Call the function three times with different sets of values.
Bonus: Figure out how to get the current year in JavaScript instead of passing it in.
*/

var calculateAge = function (birthYear, currentYear) {
  if (currentYear === undefined) {
    currentYear = (new Date()).getFullYear();
  }

  var ageBirthday = currentYear - birthYear;
  var ageUnbirthday = ageBirthday - 1;

  console.log('You are either ' + ageUnbirthday + ' or ' + ageBirthday);
};

calculateAge(1970);
calculateAge(1970, 2020);
calculateAge(2013, 2014);
