import 'dart:math';

int max = 9223372036854775807; // 64-bit
// int max = 100;

int minimumTotal(List<List<int>> triangle) {
  return helper(triangle, 0, 0, max, 0);
}

int helper(
  List<List<int>> triangle,
  int row,
  int col,
  int current,
  int output,
) {
  if (row == triangle.length) {
    return output;
  }

  // check if we still have items in the col
  if (col < triangle[row].length) {
    int mini = min(triangle[row][col], current);

    return helper(triangle, row, col + 1, mini, output);
  }

  // if we found the least of the current row,  then move to the next tow
  return helper(triangle, row + 1, 0, max, output + current);
}

main() {
  minimumTotal([
    [2],
    [3, 4],
    [6, 5, 7],
    [4, 1, 8, 3],
  ]);
}
