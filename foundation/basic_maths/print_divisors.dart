import 'dart:math';

import '../../utilities.dart';

/// Problem Statement: Given an integer N, return all divisors of N.

void main() {
  Util.timeFunction('printAllDivisors', () => printAllDivisors(12));
}

// A brute force approach would be to iterate from 1 to n checking each value if it divides n
// without leaving a remainder. For each divisor found, store it in an array and a count of divisors is maintained.
// After iterating through all possible values, the size of the array is updated with the count of divisors
// and the array is returned.
//
// Algorithm:
//
// Step 1:Initialise an array to store the divisors.
//
// Step 2:Iterate from 1 to n using a loop variable ‘i’. For each value of ‘i’:
//
// Check if ‘i’ is a divisor of ‘n’ by checking if ‘n’ is divisible by ‘i’ without a remainder (‘n’%i == 0).
// If i is a divisor, store it in the array of divisors and increment the count of divisors.
// Step 3:After the loop, return the array of divisors.

/// Bruteforce
// void printAllDivisors(int num) {
//   for (int i = 1; i <= num; i++) {
//     if (num % i == 0) {
//       print('$i ');
//     }
//   }
// }

/// Optimal
void printAllDivisors(int num) {
  for (int i = 1; i <= num/2; i++) {
    if (num % i == 0) {
      print('$i ');
    }
  }
}