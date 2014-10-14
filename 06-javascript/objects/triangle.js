var area = function(triangle) {
  var valid = function(t) {
    return t.sideA + t.sideB > t.sideC &&
           t.sideB + t.sideC > t.sideA &&
           t.sideC + t.sideA > t.sideB;
  };

  if (! valid(triangle)) {
    return null;
  }

  // via Heron's Formula
  var s = (triangle.sideA + triangle.sideB + triangle.sideC) / 2;
  var a = Math.sqrt(s * (s - triangle.sideA) * (s - triangle.sideB) * (s - triangle.sideC));

  return a;
};
