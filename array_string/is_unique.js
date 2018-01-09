// Implement an algorithm to determine if a string has all unique characters.  What if you cannot use additional data structures?  CTCI #1.2

// take case into account
// input: a string
// output: a boolean value

// time complexity: O(N)
// space complexity: O(1) -- since charHash size will never exceed total number of characters, ASCII or UNICODE

let a = 'abcdefg'; // true
let b = 'aa'; // false
let c = 'aA' // true
let d = '' // true

function isUnique(str) {
  const charHash = {};
  const len = str.length;

  for (let i = 0; i < len; i += 1) {
    if (charHash[str[i]]) {
      return false;
    } else {
      charHash[str[i]] = true;
    }
  }

  return true;
}

console.log(isUnique(a));
console.log(isUnique(b));
console.log(isUnique(c));
console.log(isUnique(d));
