function mergeSort(arr) {
  if (arr.length < 2) {
    return arr;
  } else if (arr.length === 2) {
    return arr[0] > arr[1] ? [arr[1], arr[0]] : arr;
  } else {
    const midPoint = Math.round(arr.length / 2);
    return merge(mergeSort(arr.slice(0, midPoint)), mergeSort(arr.slice(midPoint, arr.length)));
  }
}

function merge(a, b) {
  const mergedArr = [];
  let aI = 0;
  let bI = 0;

  while (aI < a.length || bI < b.length) {
    console.log(aI, bI);
    let aVal = a[aI];
    let bVal = b[bI];

    if (aVal < bVal || bI === b.length) {
      mergedArr.push(aVal);
      aI += 1;
    } else {
      mergedArr.push(bVal);
      bI += 1;
    }
  }
  return mergedArr;
}

const a = [1, 4, 9, 5, 3, 8, 0, 0];
console.log(mergeSort(a));
