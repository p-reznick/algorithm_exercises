/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isIsomorphic = function(s, t) {
  const sSig = getSig(s);
  const tSig = getSig(t);
  console.log(sSig, tSig);
  return sSig === tSig;
};

function getSig(s) {
  let sig = '';
  const chars = {};
  let currentChar;

  for (let i = 0; i < s.length; i += 1) {
    currentChar = s[i];
    console.log(currentChar);
    console.log(chars[currentChar]);
    if (chars[currentChar] === undefined) {
      chars[currentChar] = i;
    }

    sig = sig.concat(chars[currentChar]);
  }

  return sig;
}

isIsomorphic('aa', 'ab');
