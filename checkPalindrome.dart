void main() {
  checkPalindrome("Hello");
}

checkPalindrome(String inputString) {
  String tempString =
      inputString.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  bool isPalindrome = true;
  for (int i = 0; i < tempString.length ~/ 2; i++) {
    if (tempString[i] != tempString[tempString.length - i - 1]) {
      isPalindrome = false;
    }
  }
  if (isPalindrome) {
    print('It is Palindrome !');
  } else {
    print('It is not palindrome');
  }
  return;
}
