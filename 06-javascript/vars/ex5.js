/*
Store a celsius temperature into a variable.
Convert it to fahrenheit and output "NN°C is NN°F".
Now store a fahrenheit temperature into a variable.
Convert it to celsius and output "NN°F is NN°C."
*/

var celcius = 22;
var fahrenheit = 1.8 * celcius + 32;
console.log(celcius + "°C is "+ fahrenheit +"°F");

fahrenheit = 71.6;
celcius = (fahrenheit - 32) / 1.8;
console.log(fahrenheit + "°F is "+ celcius +"°C");
