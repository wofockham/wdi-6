/*
Store a radius into a variable.
Calculate the circumference based on the radius, and output "The circumference is NN".
Calculate the area based on the radius, and output "The area is NN".
*/

var radius = 157;
var circumference = 2 * Math.PI * radius;
console.log('The circumference is ' + circumference);

var area = Math.PI * radius * radius;
console.log('The area is ' + area);
