import 'package:flutter_interview_test/count_smile.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Count the smiley faces", () {
    test(
        "with input [':)', ';(', ';}', ':-D'] "
        "should return 2", () {
      // arrange
      final arr = [':)', ';(', ';}', ':-D'];

      // act
      final result = countSmileys(arr);

      // assert
      expect(result, equals(2));
    });

    test(
        "with input [';D', ':-(', ':-)', ';~)'] "
        "should return 3", () {
      // arrange
      final arr = [';D', ':-(', ':-)', ';~)'];

      // act
      final result = countSmileys(arr);

      // assert
      expect(result, equals(3));
    });

    test(
        "with input [';]', ':[', ';*', ':\$', ';-D'] "
        "should return 1", () {
      // arrange
      final arr = [';]', ':[', ';*', ':\$', ';-D'];

      // act
      final result = countSmileys(arr);

      // assert
      expect(result, equals(1));
    });
  });
}
