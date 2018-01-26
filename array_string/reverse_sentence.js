function reverseWords(arr) {
  let anchor = 0;
  let runner = 0;
  reverseRange(arr, 0, arr.length - 1);

  while (runner < arr.length) {
    while (arr[runner + 1] != ' ' && runner < arr.length - 1) {
      runner += 1;
    }
    reverseRange(arr, anchor, runner);
    runner += 1;
    while (arr[runner] === ' ' && runner < arr.length) {
      runner += 1;
    }
    anchor = runner;
  }

  return arr;
}

function reverseRange(arr, start, end) {
  while (start <= end) {
    const a = arr[start];
    const b = arr[end];
    arr[end] = a;
    arr[start] = b;
    start += 1;
    end -= 1;
  }
}

const a = ['t', 'h', 'i', 's', ' ', 'i', 's'];
console.log(reverseWords(a));
