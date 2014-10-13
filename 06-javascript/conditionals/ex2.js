/*
Write a function named helloWorld that:

takes 1 argument, a language code (e.g. "es", "de", "en")
returns "Hello, World" for the given language, for atleast 3 languages. It should default to returning English.
Call that function for each of the supported languages and log the result to make sure it works.
*/

var helloWorld = function (languageCode) {
  if (! languageCode) {
    languageCode = 'en'; // Set 'en' as the default if no languageCode is specified.
  }

  var greeting;
  if (languageCode == 'en') {
    greeting = 'Hello, World';
  } else if (languageCode == 'de') {
    greeting = 'Hallo, Welt';
  } else if (languageCode == 'es') {
    greeting = 'Hola, Mundo'
  } else {
    greeting = 'Arble garble';
  }

  return greeting;
};

console.log('default English', helloWorld());
console.log('English', helloWorld('en'));
console.log('German', helloWorld('de'));
console.log('Spanish', helloWorld('es'));
console.log('Unknown/Estonian', helloWorld('et'));

