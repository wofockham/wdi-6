var area = function(triangle) {
  // via Heron's Formula
  var s = (triangle.sideA + triangle.sideB + triangle.sideC) / 2;
  var a = Math.sqrt(s * (s - triangle.sideA) * (s - triangle.sideB) * (s - triangle.sideC));

  return a;
};

var invalid = {
  sideA: 1,
  sideB: 1,
  sideC: 10000
}

var invalid_area = area(invalid);

if (isNaN(invalid_area)) {
  alert('INVALID TRIANGLE DETECTED');
}