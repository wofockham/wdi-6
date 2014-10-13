/*
Write a function named tellFortune that:

takes 4 arguments: number of children, partner's name, geographic location, job title.
outputs your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
Call that function 3 times with 3 different values for the arguments.
*/

var tellFortune = function(kidCount, partner, geographicLocation, jobTitle) {
  var fortune = 'You will be a ' + jobTitle + ' in ' + geographicLocation + ', and married to ' + partner + ' with ' + kidCount + ' kids';
  console.log(fortune);
};

tellFortune(8, 'Craigsy', 'Bermuda', 'window wiper');
tellFortune(0, 'Bess', 'Melbourne', 'car washer');
tellFortune(Infinity, 'Pauly Shore', 'LA', 'waitress');
