class Solution {
  int steps = 0;
  int numberOfSteps(int num) {
    if (num < 1) {
      return steps;
    }

    // even
    if (num % 2 == 0) {
      steps = steps + 1;
      return numberOfSteps((num / 2).toInt());
    }

    steps = steps + 1;
    return numberOfSteps(num - 1);
  }
}

main() {
  print(Solution().numberOfSteps(8));
}
