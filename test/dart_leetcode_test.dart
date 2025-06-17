import 'package:dart_leetcode/src/recursions/recursions.dart';
import 'package:dart_leetcode/src/solutions/1.%20Two%20Sums.dart';
import 'package:dart_leetcode/src/factorial.dart';
import 'package:dart_leetcode/src/solutions/120.%20Triangle.dart';
import 'package:dart_leetcode/src/solutions/1342.%20Number%20of%20Steps%20to%20Reduce%20a%20Number%20to%20Zero.dart';
import 'package:dart_leetcode/src/solutions/33.%20Search%20in%20Rotated%20Sorted%20Array.dart';
import 'package:test/test.dart';

void main() {
  group("Recursions", () {
    test('Factorial in sum', () {
      expect(factorial(5), 15);
      expect(factorial(4), 10);
      expect(factorial(3), 6);
    });

    test('Sorted array or not', () {
      expect(Recursions().sortedOrNot([1, 2, 3, 4, 5, 8, 10, 12], 0), isTrue);
      expect(Recursions().sortedOrNot([1, 2, 4, 8, 3, 10, 12], 0), isFalse);
      expect(Recursions().sortedOrNot([1, 2, 3, 4, 5, 8, 10, 1], 0), isFalse);
    });

    test('Find target in array', () {
      expect(Recursions().findIndex([1, 2, 3, 4, 5, 8, 10, 12], 12, 0), 7);
      expect(Recursions().findIndex([1, 2, 4, 8, 3, 10, 12], 8, 0), 3);
      expect(Recursions().findIndex([1, 2, 3, 4, 5, 8, 10, 1], 3, 0), 2);
      expect(Recursions().findIndex([1, 2, 3, 4, 5, 8, 10, 1], 100, 0), -1);
    });

    test("Find multiple targets in array", () {
      expect(Recursions().findIndexes([5, 4, 5, 8, 5, 1], 5, [], 0), [0, 2, 4]);
      expect(Recursions().findIndexes([5, 4, 5, 8, 5, 1], 2, [], 0), []);
    });

    test("Find multiple targets in array 2", () {
      expect(Recursions().findIndexes2([5, 4, 5, 8, 5, 1], 5, 0), [0, 2, 4]);
      expect(Recursions().findIndexes2([5, 4, 5, 8, 5, 1], 2, 0), []);
    });

    test("Bubble sort", () {
      List<int> nums = [4, 3, 2, 1];
      expect(Recursions().bubbleSort(nums, nums.length - 1, 0), [1, 2, 3, 4]);
    });

    // test("Draw a triangle", () {
    //   expect(Recursions().triangle(4, 0, [], 0), [
    //     ["*", "*", "*", "*"],
    //     ["*", "*", "*"],
    //     ["*", "*"],
    //     ["*"],
    //   ]);
    // });
  });

  group('My Tests for Leetcode', () {
    test("1. Two Sums", () {
      expect(twoSums([2, 5, 5, 11, 12], 10, {}, 0), containsAll([1, 2]));
    });

    test('1342. Number of Steps to Reduce a Number to Zero', () {
      expect(Solution().numberOfSteps(14), 6); // 6 steps
      expect(Solution().numberOfSteps(8), 4); // 4 steps
    });

    test("33. Search in Rotated Sorted Array", () {
      expect(searchInRotatedSortedArray([4, 5, 6, 7, 0, 1, 2], 0), 4);
      expect(searchInRotatedSortedArray([4, 5, 6, 7, 0, 1, 2], 3), -1);
      expect(searchInRotatedSortedArray([1], 0), -1);
    });

    test("120. Triangle", () {
      expect(
        minimumTotal([
          [2],
          [3, 4],
          [6, 5, 7],
          [4, 1, 8, 3],
        ]),
        11,
      );

      // expect(
      //   minimumTotal([
      //     [-1],
      //     [2, 3],
      //     [1, -1, -3],
      //   ]),
      //   -1,
      // );
    });
  });
}
