/*
Write a function named greaterNum that:

takes 2 arguments, both numbers.
returns whichever number is the greater (higher) number.
Call that function 2 times with different number pairs, and log the output to make sure it works (e.g. "The greater number of 5 and 10 is 10.").
*/

var greaterNum = function (num1, num2) {
  if (num1 > num2) {
    return num1;
  } else {
    return num2;
  }
};

console.log('The greater number of 5 and 10 is ' + greaterNum(5, 10));
console.log('The greater number of 15 and 10 is ' + greaterNum(15, 10));
console.log('The greater number of 0 and 0 is ' + greaterNum(0, 0));

