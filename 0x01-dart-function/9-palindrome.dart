bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  return palindrome(s);
}

bool palindrome(String s) {
  if (s.length <= 1) {
    return true;
  }

  if (s[0] != s[s.length - 1]) {
    return false;
  }

  return palindrome(s.substring(1, s.length - 1));
}
