// Given a string, write a function to check if it is a permutation of a palindrome.  A palindrome is a word or phrase that is the same forwards and backwards.  A permutation is a rearrangement of letters.
// i.e., can this string be rearranged to form a palindrome

// empty string a palindrome? yes
// whitespace count? no
// non alpha-num chars? no
// case count? no
// bob
// perms:
// bbo
// obb
// if all charCounts except for one are % 2, then a palindrome permutation exists

function palindrome_permutation(str) {
  if (str === '') {
    return true;
  }

  const len = getTotalNonWhitespace(str);
  const even = len % 2 === 0 ? true : false;

  const charCounts = getCharCounts(str);
  let oddCount = 0;

  Object.keys(charCounts).forEach((char) => {
    if (charCounts[char] % 2 === 1) {
      oddCount += 1;
    }
  });

  if ((even && (oddCount === 0)) || (!even && (oddCount === 1))) {
    return true;
  } else {
    return false;
  }
}

function getTotalNonWhitespace(str) {
  let total = 0;

  for (let i = 0; i < str.length; i += 1) {
    if (str[i] !== ' ') {
      total += 1;
    }
  }

  return total;
}

function getCharCounts(str) {
  const len = str.length;
  const counts = {};

  for (let i = 0; i < len; i += 1) {
    const char = str[i].toLowerCase();

    if (char === ' ') {
      continue;
    } else if (counts[char] === undefined) {
      counts[char] = 1;
    } else {
      counts[char] += 1;
    }
  }

  return counts;
}

console.log(palindrome_permutation('bbo'));
console.log(palindrome_permutation('bob'));
console.log(palindrome_permutation('taco cat'));
console.log(palindrome_permutation('TacO CAt'));
console.log(palindrome_permutation(''));
console.log(palindrome_permutation('ab'));
