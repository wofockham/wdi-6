var brothers = ['Groucho', 'Harpo', 'Chico', 'Zeppo', 'Gummo'];

for (var i = 0; i < brothers.length; i++) {
  console.log('My #' + (i + 1) + ' choice is ' + brothers[i]);
}


// 'shuffle' array: MDN sort() docs apply here.
brothers.sort(function () {
  return 0.5 - Math.random();
});


// Monkey patch an each iterator on this array:
// (probably never do this)
brothers.each = function (thing_to_do) {
  for (var i = 0; i < this.length; i++) {
    thing_to_do(this[i], i);
  }
};

brothers.each(function (brother, i) {
  console.log('My #' + (i + 1) + ' choice is ' + brothers[i]);
});