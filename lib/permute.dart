List<String> permute(String input) {
  List<String> result = [];
  _permutation(input.replaceAll(' ', '').split(''), 0, result);
  result.sort();
  return result.toSet().toList();
}

void _permutation(List<String> chars, int currentIndex, List<String> result) {
  if (currentIndex == chars.length - 1) {
    result.add(chars.join());
  } else {
    for (var index = currentIndex; index < chars.length; index++) {
      _swap(chars, currentIndex, index);

      _permutation(chars, currentIndex + 1, result);

      _swap(chars, currentIndex, index);
    }
  }
}

void _swap(List<String> chars, int i, int j) {
  String temp = chars[i];
  chars[i] = chars[j];
  chars[j] = temp;
}
