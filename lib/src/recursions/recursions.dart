import 'dart:io';

class Recursions {
  arrays() {
    print("Hello world");
  }

  bool sortedOrNot(List arr, int i) {
    if (i >= arr.length - 1) {
      return true;
    }

    return arr[i] < arr[i + 1] && sortedOrNot(arr, i + 1);
  }

  int? findIndex(List arr, int target, int i) {
    if (i > arr.length - 1) {
      return -1;
    }

    if (arr[i] == target) {
      return i;
    }

    return findIndex(arr, target, i + 1);
  }

  List<int> findIndexes(List arr, int target, List<int> list, int i) {
    if (i > arr.length - 1) {
      return list;
    }

    if (arr[i] == target) {
      list.add(i);
    }

    return findIndexes(arr, target, list, i + 1);
  }

  List<int> findIndexes2(List arr, int target, int i) {
    List<int> list = [];

    if (i > arr.length - 1) {
      return list;
    }

    if (arr[i] == target) {
      list.add(i);
    }

    List<int> answers = findIndexes2(arr, target, i + 1);

    list.addAll(answers);

    return list;
  }

  triangle(int row, int col) {
    if (row == 0) {
      return;
    }

    if (row > col) {
      stdout.write("*");
      triangle(row, col + 1);
    } else {
      stdout.write("\n");
      triangle(row - 1, 0);
    }
  }

  List<int> bubble(List<int> nums, int r, int c) {
    if (r == 0) {
      return nums;
    }

    if (c < r) {
      if (nums[c] > nums[c + 1]) {
        // swap
        int temp = nums[c];
        nums[c] = nums[c + 1];
        nums[c + 1] = temp;
      }

      return bubble(nums, r, c + 1);
    }

    return bubble(nums, r - 1, 0);
  }
}

main() {
  // print(Recursions().sortedOrNot([1, 2, 3, 4, 5, 8, 10, 1], 0));
  // print(Recursions().findIndexes2([5, 4, 5, 8, 5, 1], 5, 0));
  Recursions().triangle(4, 0);
}
