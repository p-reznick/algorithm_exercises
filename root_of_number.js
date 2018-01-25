function root(x, n) {
  // k^n = x => k = x^(1/n)
  let k = x;

  while (power(k, n) != x) {
    console.log(k);
    if (power(k, n) > x) {
      k = k / 2;
    } else {
      k = k + (k / 2);
    }
  }

  return k;
}

function power(base, exponent) {
  let result = 1;

  for (let i = 0; i < exponent; i += 1) {
    result *= base;
  }

  return result;
}

root(27, 3);
