import 'package:dart_leetcode/src/1.%20Two%20Sums.dart';
import 'package:dart_leetcode/src/factorial.dart';
import 'package:test/test.dart';

void main() {
  group('My Tests for Leetcode', () {
    test('Factorial in sum', () {
      expect(factorial(5), 15);
      expect(factorial(4), 10);
      expect(factorial(3), 6);
    });

    test("1. Two Sums", () {
      expect(twoSums([2, 5, 5, 11, 12], 10, {}, 0), containsAll([1, 2]));
    });
  });
}
