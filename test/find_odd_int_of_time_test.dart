import 'package:flutter_interview_test/find_odd_int_of_time.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Find the odd int in an array of integers", () {
    test(
        "with input [7] should return 7, "
        "because it occurs 1 time (which is odd)", () {
      // act
      final result = findOddIntOfTime([7]);

      // assert
      expect(result, equals({7: 1}));
    });

    test(
        "with input [0] should return 0,"
        "because it occurs 1 time (which is odd)", () {
      // act
      final result = findOddIntOfTime([0]);

      // assert
      expect(result, equals({0: 1}));
    });

    test(
        "with input [1,1,2] should return 2,"
        "because it occurs 1 time (which is odd)", () {
      // act
      final result = findOddIntOfTime([1, 1, 2]);

      // assert
      expect(result, equals({2: 1}));
    });

    test(
        "with input [0,1,0,1,0] should return 0,"
        "because it occurs 3 times (which is odd)", () {
      // act
      final result = findOddIntOfTime([0, 1, 0, 1, 0]);

      // assert
      expect(result, equals({0: 3}));
    });

    test(
        "with input [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4,"
        "because it appears 1 time (which is odd)", () {
      // act
      final result = findOddIntOfTime([1, 2, 2, 3, 3, 3, 4, 3, 3, 3, 2, 2, 1]);

      // assert
      expect(result, equals({4: 1}));
    });
  });
}
