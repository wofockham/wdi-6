/*
Write a function named assignGrade that:

takes 1 argument, a number score.
returns a grade for the score, either "A", "B", "C", "D", or "F".
Call that function for a few different scores and log the result to make sure it works.
*/
var assignGrade = function(score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'F'; // Loser.
  }
}

var testScore = 0;
while (testScore <= 100) {
  console.log(testScore, assignGrade(testScore));
  testScore += 1;
}
