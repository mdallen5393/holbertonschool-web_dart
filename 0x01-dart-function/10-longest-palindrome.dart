import '9-palindrome.dart';

String longestPalindrome(String s) {
  String maxPalindrome = 'none';
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && (maxPalindrome == 'none' || substring.length > maxPalindrome.length)) {
        maxPalindrome = substring;
      }
    }
  }
  return maxPalindrome;
}
