// 125
// two-pointer solution
// first, strip out non alphanum chars
// then, move left and right pointers over string
// return false if the chars they point at don't match
// else return true
// Time: O(N), Space: O(1)
var isPalindrome = function(s) {
  s = s.replace(/[^a-z0-9]/gi, '');
  var left = 0;
  var right = s.length - 1;

  while (left < right) {
    if (s[left].toLowerCase() !== s[right].toLowerCase()) {
      return false;
    }

    left += 1;
    right -= 1;
  }
  return true;
};
