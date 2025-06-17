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

  List<int> bubbleSort(List<int> nums, int r, int c) {
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

      return bubbleSort(nums, r, c + 1);
    }

    return bubbleSort(nums, r - 1, 0);
  }

  List<int> selectionSort(List<int> nums, int row, int col, int max) {
    if (row == 0) {
      return nums;
    }

    // check every columns
    if (col < row) {
      // check if current num is > next num
      if (nums[col] > nums[max]) {
        return selectionSort(nums, row, col + 1, col);
      } else {
        return selectionSort(nums, row, col + 1, max);
      }
    } else {
      // if done searching every cols
      // swap
      int temp = nums[max]; // put it on temp first
      // put the max position to the last row
      nums[max] = nums[row - 1];
      // update the last row check (4-1 = 3 index) to max
      nums[row - 1] = temp;
      return selectionSort(nums, row - 1, 0, 0);
    }
  }
}

main() {
  // print(Recursions().sortedOrNot([1, 2, 3, 4, 5, 8, 10, 1], 0));
  // print(Recursions().findIndexes2([5, 4, 5, 8, 5, 1], 5, 0));
  Recursions().triangle(4, 0);
}
