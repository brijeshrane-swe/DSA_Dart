import 'dart:math';

import '../../utilities.dart';

/// Problem Statement: Given an integer N, check whether it is prime or not.
/// A prime number is a number that is only divisible by 1 and itself and the total number of divisors is 2.

void main() {
  int number = 11;
  bool result = Util.timeFunction('checkPrime', () => checkPrime(number));
  if (result) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number.');
  }
}

/// Bruteforce
// bool checkPrime(int number) {
//   int count = 0;
//   for (int i = 1; i * i <= number; i++) {
//     if (number % i == 0) {
//       count++;
//
//       if ((number/i) != i) count++;
//     }
//   }
//
//   if (count == 2) return true;
//   return false;
// }

/// Optimal
bool checkPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}