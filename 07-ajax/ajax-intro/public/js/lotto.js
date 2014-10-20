// var request = new XMLHttpRequest();
// request.open('GET', '/lotto', true);
// request.send();

// // The request is still running in the background at this point.
// console.log("received", request.responseText);
// alert(request.responseText);

var slowRequest = function () {
  var request = new XMLHttpRequest();
  request.open('GET', '/lotto', true);
  request.onreadystatechange = function () {
    console.log("readyState updated", request.readyState);
    if (request.readyState === 4) {
      alert(request.responseText);
    }
  }
  request.send();
};

slowRequest();
