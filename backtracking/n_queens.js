// N Queens problem https://leetcode.com/problems/n-queens/description/
// return an array of n strings of n length representing an nxn chessboard, with
// '.' denoting an empty space and 'Q' denoting a queen.  Return all distinct
// solutions where the queens aren't attacking each other, that is, where
// no queen is vertically, horizontally, or diagonally in line with any other
// queen
var solveNQueens = function(n) {
  let board = makeBoard(n);
  let solutions = [];

  return helper(0, 0, board, solution);
};

function helper(r, c, board, solutions) {
s
}

function isAttacked(r, c, board) {
  // check row
  // check column
  // check diagonal
}

function makeBoard(n) {
  //
}
