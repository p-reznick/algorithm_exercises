// 344
// stack-based solution
// Time: O(N) Space: O(N)
var reverseString = function(s) {
  var stack = [];

  for (var i = s.length - 1; i >=0; i -= 1) {
    stack.push(s[i])
  }

  return stack.reduce(function(result, char) {
    var result = result.concat(char);
    return result;
  }, '');
};
