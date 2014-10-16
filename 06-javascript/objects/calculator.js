/*
Create a calculator in JavaScript.

Requirements

Prompt the user to enter an operator and two operands.
Support the following operations: addition, subtraction, multiplication, and division.
Output may appear in the console or in an alert.
Bonus

Support the modulus operator.
Support the square root operator.
Support more than two operands.
*/

var operator = prompt('Enter your operator');
var operandA = parseFloat(prompt('Enter your first operand'));
var operandB = parseFloat(prompt('Enter your second operand'));

switch(operator) {
  case '+':
    result = operandA + operandB;
    break;
  case '-':
    result = operandA - operandB;
    break;
  case '/':
    result = operandA / operandB;
    break;
  case '*':
    result = operandA * operandB;
    break;
  default:
    console.log('Unrecognised operator');
}

console.log(result);
