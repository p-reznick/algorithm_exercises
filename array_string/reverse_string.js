// Write a function that takes a string as input and returns the string reversed.
//
// Example:
// Given s = "hello", return "olleh".
// input, output: string

// with stack, time complexity: O(N), space complexity: O(N)
var reverseString = function(s) {
  const reversedString = '';

  for (let i = s.length; i > 0; i -= 1) {
    reversedStrong += reversedString.concat(s[i]);
  }

  return reversedString;
};
