// Given two strings, write a method to decide if one is a permutation of the other.  CTCI #1.2

// input: string
// output: boolean
// case count, whitespace counts

// time complexity: O(N)
// space complexity: O(N)

function isPermutation(a, b) {
  let aChars = {};
  let bChars = {};

  if (a.length !== b.length || a === b) {
    return false;
  } else {
    aChars = getCharHash(a);
    bChars = getCharHash(b);
  }

  return areEqual(aChars, bChars);
}

function getCharHash(str) {
  const charHash = {};

  for (let i = 0; i < str.length; i += 1) {
    const char = str[i];

    if (charHash[char] === undefined) {
      charHash[char] = 1;
    } else {
      charHash[char] += 1;
    }
  }

  return charHash;
}

function areEqual(objA, objB) {
  let areEqual = true;

  Object.keys(objA).forEach((key) => {
    if(objA[key] !== objB[key]) {
      areEqual = false;
    }
  });

  return areEqual;
}

console.log(isPermutation('god', 'god'));
console.log(isPermutation('god', 'dog'));
console.log(isPermutation('god', 'do'));
