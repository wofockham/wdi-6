var bros = [
  {
    name: 'Groucho',
    instrument: 'Guitar'
  },
  {
    name: 'Chico',
    instrument: 'Piano'
  }
];

var badBrotherHTML = function (brother) {
  var str = "";
  str += "<li class='marx'>";
  str += brother.name;
  str += " plays ";
  str += "<i>" + brother.instrument + "</i>";
  str += "</li>";
  return str;
};

$(document).ready(function () {
  $.each(bros, function(index, brother) {
    $('#bros').append( badBrotherHTML(brother) );
  });
});
