import 'dart:ffi';

/// Problem Statement: Given an integer N, return true if it is a palindrome else return false.

void main() {
  int number = 12121;
  bool result = checkPalindrome(number);
  if (result) {
    print('$number is palindrome number.');
  } else {
    print('$number is not a palindrome number.');
  }
}

/// Bruteforce
bool checkPalindrome(int num) {
  return num == reverseNumber(num);
}

int reverseNumber(int num) {
  int rev = 0;

  while (num != 0) {
    int lastDigit = num % 10;
    rev = rev * 10 + lastDigit;
    num ~/= 10;
  }
  return rev;
}

/// Optimal