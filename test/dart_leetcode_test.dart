import 'package:dart_leetcode/dart_leetcode.dart';
import 'package:test/test.dart';

void main() {
  group('My Tests for Leetcode', () {
    test('Factorial in sum', () {
      expect(Awesome.factorial(5), 15);
      expect(Awesome.factorial(4), 10);
      expect(Awesome.factorial(3), 6);
    });
  });
}
