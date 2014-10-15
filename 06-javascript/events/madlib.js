var button = document.getElementById('lib-button');

var makeMadLib = function () {
  var noun = document.getElementById('noun').value;
  var adjective = document.getElementById('adjective').value;
  var person = document.getElementById('person').value;

  var story = [person, 'really likes', adjective, noun].join(' ');
  document.getElementById('story').innerHTML = story;
};

button.addEventListener('click', makeMadLib);
window.addEventListener('keypress', function (event) {
  if (event.which === 13) {
    makeMadLib();
  }
});
