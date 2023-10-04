import 'package:flutter_interview_test/permute.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Permutations', () {
    test("with input 'a' should return: ['a']", () {
      // act
      final result = permute('a');

      // assert
      expect(result, ['a']);
    });

    test("with input 'ab' should return: ['ab', 'ba']", () {
      // act
      final result = permute('ab');

      // assert
      expect(result, ['ab', 'ba']);
    });

    test(
        "with input 'abc' should return: ['abc','acb','bac','bca','cab','cba']",
        () {
      // act
      final result = permute('abc');

      // assert
      expect(result, ['abc', 'acb', 'bac', 'bca', 'cab', 'cba']);
    });

    test(
        "with input 'aabb' should return: "
        "['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']", () {
      // act
      final result = permute('aabb');

      // assert
      expect(result, ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']);
    });
  });
}
