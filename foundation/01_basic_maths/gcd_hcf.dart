import 'dart:math';

import '../../utilities.dart';

/// Problem Statement: Given two integers N1 and N2, find their greatest common divisor.

// The GCD of two numbers is the largest number that divides both of them without leaving a remainder.
// We iterate through all numbers from 1 up to the minimum of the two input numbers,
// checking if each number is a common factor of both input numbers.
//
// If a number is a common factor, we update our gcd variable to that number.
// This process continues until we have iterated through all possible common factors. Finally,
// we return the gcd variable, which will hold the greatest common divisor of the two input numbers.
//
// Algorithm:
// Step 1: Initialise a variable gcd to 1.
// This variable will store the greatest common divisor of the input numbers n1 and n2.
//
// Step 2: Iterate from 1 to the minimum of n1 and n2.
//
// We start from 1 because the GCD of any two numbers is at least 1,
// and it cannot be greater than the smaller of the two numbers.
// Step 3: At each iteration, if i is a common factor of both n1 and n2 update the gcd variable to i.
// We keep updating gcd as long as we find common factors.
//
// Step 4: After the iteration, the gcd variable will store the greatest common divisor of n1 and n2.
// Return this value as the output of the function.

void main() {
  int n1 = 40;
  int n2 = 72;
  int result = Util.timeFunction('findGCD', () => findGCD(n1, n2));
  print('The GCD of $n1 & $n2 is $result');
}

/// Bruteforce
int findGCD(int n1, int n2) {
  int res = 1;
  // int smallest = n1 > n2 ? n2 : n1;
  for (int i = 1; i < min(n1, n2); i++) {
    if ((n1 % i == 0) && (n2 % i == 0)) {
      res = i;
    }
  }
  return res;
}

// The GCD of two numbers is the largest number that divides both of them without leaving a remainder.
// We iterate through all numbers from 1 up to the minimum of the two input numbers,
// checking if each number is a common factor of both input numbers.
//
// If a number is a common factor, we update our gcd variable to that number.
// This process continues until we have iterated through all possible common factors.
// Finally, we return the gcd variable, which will hold the greatest common divisor of the two input numbers.
//
// Algorithm:
// Step 1: Initialise a variable gcd to 1.
// This variable will store the greatest common divisor of the input numbers n1 and n2.
//
// Step 2: Iterate from 1 to the minimum of n1 and n2.
//
// We start from 1 because the GCD of any two numbers is at least 1,
// and it cannot be greater than the smaller of the two numbers.
// Step 3: At each iteration, if i is a common factor of both n1 and n2 update the gcd variable to i.
// We keep updating gcd as long as we find common factors.
//
// Step 4: After the iteration, the gcd variable will store the greatest common divisor of n1 and n2.
// Return this value as the output of the function.

/// Better
// int findGCD(int n1, int n2) {
//   for (int i = min(n1, n2); i > 0; i--) {
//     if ((n1 % i == 0) && (n2 % i == 0)) {
//       return i;
//     }
//   }
//   return 1;
// }
