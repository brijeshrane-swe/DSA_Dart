import 'dart:math';

/// Problem Statement: Given an integer N, return the number of digits in N.

// To count the number of digits in a number, we can use the algorithm created in
// Extract Digits as now instead of extracting digits we are simply creating a counter
// to count the number of digits in the number..
//
// Algorithm:
//
// Step 1:Initialise a counter to store the number of digits.
//
// Step 2:While N is greater than 0, execute the following:
//
// Increment the counter by 1
// Update N by removing its last digit by performing a modulo 10 (%10) operation on it.
// Step 3:After exiting the while loop, we return the counter as the number of digits.

void main() {
  int number = 12345;
  int result = countDigits(number);
  print('There are $result digits in a number $number');
}

/// Bruteforce
// int countDigits(int num) {
//   int count = 0;
//   while (num != 0) {
//     num = (num / 10).toInt();
//     count++;
//   }
//   return count;
// }

/// Optimal
int countDigits(int num) {
  // Math.log10 equivalent in Dart is log(n) / log(10)
  return (log(num) / log(10)).floor() + 1;
}