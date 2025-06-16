class Solution {
  int i = 0;
  List steps = [];

  int numberOfSteps(int num) {
    if (num < 1) {
      return steps.length;
    }

    i++;

    // even
    if (num % 2 == 0) {
      steps.add('Step $i) $num is even; divide by 2 and obtain ${num / 2}');
      return numberOfSteps((num / 2).toInt());
    }

    steps.add('Step $i) $num is odd; subtract by 1 and obtain ${num - 1}');
    return numberOfSteps(num - 1);
  }
}

main() {
  print(Solution().numberOfSteps(8));
}
