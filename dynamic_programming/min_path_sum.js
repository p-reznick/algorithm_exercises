// leetcode https://leetcode.com/problems/minimum-path-sum/description/
var minPathSum = function(grid) {
  const sumGrid = {};
  const height = grid.length;
  const width = grid[0].length;

  for (let r = 0; r < height; r += 1) {
    for (let c = 0; c < width; c += 1) {
      const gridVal = grid[r][c];

      if (r === 0 && c === 0) {
        sumGrid[r + ',' + c] = gridVal;
      } else {
        topVal = grid[r - 1] != undefined ? sumGrid[(r - 1) + ',' + c] :
                                            Infinity;
        leftVal = grid[r][c - 1] != undefined ? sumGrid[(r) + ',' + (c - 1)] :
                                                Infinity;
        sumGrid[r + ',' + c] = gridVal + (topVal > leftVal ? leftVal : topVal);
      }
    }
  }

  return sumGrid[(grid.length - 1) + ',' + (width - 1)];
};
