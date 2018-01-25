function root(x, n) {
  if (x === 0) {
    return 0;
  }

  let lowerBound = 0;
  let upperBound = x;
  let approxRoot = (lowerBound + upperBound) / 2;

  while (approxRoot - lowerBound >= 0.001) {
    if (power(approxRoot, n) > x) {
      upperBound = approxRoot;
    } else if (power(approxRoot, n) < x) {
      lowerBound = approxRoot;
    } else {
      break;
    }

    approxRoot = (upperBound + lowerBound) / 2;
  }

  return +approxRoot.toFixed(3);
}

function power(base, exponent) {
  let result = 1;

  for (let i = 0; i < exponent; i += 1) {
    result *= base;
  }

  return result;
}
