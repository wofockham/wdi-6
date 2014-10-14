/*
It's like IMDB, but much much smaller!

Create an object to store the following information about your favorite movie: title (a string), duration (a number), and stars (an array of strings).

Create a function to print out the movie information like so: "Puff the Magic Dragon lasts for 30 minutes. Stars: Puff, Jackie, Living Sneezes."
*/

var ohbrother = {
  title: 'Oh Brother! Where Art Thou?',
  duration: 132,
  stars: [
    'George Clooney',
    'That Really Slinty Guy',
    'That Really Dumb Really Slinty Guy',
    'John Goodman'
  ]
};

var moviePrinter = function (movie) {
  var description = [
    movie.title,
    'lasts for',
    movie.duration,
    'minutes.',
    'Stars:',
    movie.stars.join(', ')
  ].join(' ');
  description += '.';
  console.log(description);
};

moviePrinter(ohbrother);





