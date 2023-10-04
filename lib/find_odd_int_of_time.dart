Map<int, int> findOddIntOfTime(List<int> arr) {
  Map<int, int> countMap = {};
  for (var key in arr) {
    if (countMap.containsKey(key)) {
      countMap[key] = countMap[key]! + 1;
    } else {
      countMap[key] = 1;
    }
  }

  for (var key in countMap.keys) {
    print('int: $key, times: ${countMap[key]}');
    if (isOdd(countMap[key]!)) {
      return {key: countMap[key]!};
    }
  }

  return {-1: -1};
}

bool isOdd(int key) {
  return key % 2 != 0;
}
