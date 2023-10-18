import 'dart:math';

String longestUniqueSubstring(String str) {
  int start = 0;
  int maxLength = 0;
  String maxSubstring = '';
  Map<String, int> map = {};

  for (int end = 0; end < str.length; end++) {
    if (map.containsKey(str[end])) {
      start = max(map[str[end]]! + 1, start);
    }
    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      maxSubstring = str.substring(start, end + 1);
    }
    map[str[end]] = end;
  }

  return maxSubstring;
}
