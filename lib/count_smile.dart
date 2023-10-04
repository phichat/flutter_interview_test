int countSmileys(List<String> arr) {
  final pattern = RegExp(r'^[:;][-~]?[)D]$');

  return arr.where((e) => pattern.hasMatch(e)).length;
}
