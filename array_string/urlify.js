// write a method to replace all spaces in a string with %20. CTCI #1.3

// string may have whitespace at end -- do not replace this
// what about string w only whitespace chars?
// what about non-space whitespace chars?

// input: string
// output: string

function urlify(str) {
  let index = str.length - 1;
  let urlStr = '';

  while(str[index] === ' ') {
    index -= 1;
  }

  while(index >= 0) {
    if (str[index] === ' ') {
      urlStr = '%20' + urlStr;
    } else {
      urlStr = str[index] + urlStr;
    }
    index -= 1;
  }

  return urlStr;
}

console.log(urlify(' '));
console.log(urlify('Mr John Smith   '));
