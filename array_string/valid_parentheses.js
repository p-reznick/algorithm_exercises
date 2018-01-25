/**
 * @param {string} s
 * @return {boolean}
 */
var isValid = function(s) {
  const stack = [];

  for (let i = 0; i < s.length; i += 1) {
    let currentChar = s[i];

    if (stack.length === 0) {
      stack.push(currentChar);
    } else if (bracketsMatch(stack[stack.length - 1], currentChar)) {
      stack.pop();
    } else {
      stack.push(currentChar);
    }
  }

  return stack.length === 0;
};

function bracketsMatch(a, b) {
  if (a === '{' && b === '}') {
    return true;
  } else if (a === '(' && b === ')') {
    return true;
  } else if (a === '[' && b === ']') {
    return true;
  }

  return false;
}
