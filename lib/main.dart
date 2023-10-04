import 'count_smile.dart';
import 'find_odd_int_of_time.dart';
import 'permute.dart';

void main() {
  print("Permutations");
  print(permute('abc').toString());

  print("Find the odd int of time");
  print(findOddIntOfTime([1, 1, 2]));

  print("Count the smiley faces");
  print(countSmileys([';]', ':[', ';*', ':\$', ';-D']));
}
