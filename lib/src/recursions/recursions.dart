import 'dart:ffi';
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

  // max = index from nums
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
      // swap maxes
      int temp = nums[max]; // put it on temp first
      // update last max to previous max
      nums[max] = nums[row - 1];
      // update the last row max
      nums[row - 1] = temp;
      return selectionSort(nums, row - 1, 0, 0);
    }
  }

  // Merge two sorted arrays
  List<int> mergeSort(List<int> first, List<int> second) {
    List<int> output = List.filled(first.length + second.length, 0);

    int i = 0;
    int j = 0;
    int k = 0;

    while (i < first.length && j < second.length) {
      if (first[i] < second[j]) {
        output[k] = first[i];
        i++;
      } else {
        output[k] = second[j];
        j++;
      }
      k++;
    }

    // if there is an extra numbers in the array
    while (i < first.length) {
      output[k] = first[i];
      i++;
      k++;
    }

    while (j < second.length) {
      output[k] = second[j];
      j++;
      k++;
    }

    return output;
  }

  List<int> mergeTwoSortedArrays(List<int> arr) {
    if (arr.length == 1) {
      return arr;
    }

    int mid = (arr.length / 2).truncate();

    List<int> left = mergeTwoSortedArrays(arr.getRange(0, mid).toList());
    List<int> right = mergeTwoSortedArrays(
      arr.getRange(mid, arr.length).toList(),
    );

    return mergeSort(left, right);
  }

  /// TO DO: Quick sort
}

main() {
  // print(Recursions().sortedOrNot([1, 2, 3, 4, 5, 8, 10, 1], 0));
  // print(Recursions().findIndexes2([5, 4, 5, 8, 5, 1], 5, 0));
  // Recursions().triangle(4, 0);
  // List<int> nums = [4, 3, 2, 1];
  // Recursions().selectionSort(nums, nums.length, 0, 0);
  List<int> arr = [5, 4, 3, 2, 1];
  // Recursions().mergeTwoSortedArrays(arr);
}
