import 'dart:core';
import 'dart:math';

import '../../utilities.dart';

/// Problem Statement: Given an integer N, return true if it is an Armstrong number otherwise return false.

// To check if a number is an armstrong number, we can use the algorithm created in Extract Digits.
//
// An Armstrong number, also known as a narcissistic number or plenary number,
// is a number that is equal to the sum of its own digits each raised to the power of the number of digits.
//
// Number of digits: 3, 153 = 13+53+33
//
// We extract the digits of the number, raise each digit to the power of the total number of digits in the number.
// Sum up all the results obtained and check if the sum equals to the original number.
//
// Algorithm
// Step 1:Calculate the number of digits in the input number and store it in k.
//
// Step 2: Initialise a variable sum to 0.
// This variable will store the sum of each digit raised to the power of number of digits in number.
//
// Make a copy of the original number to store it in a temporary variable.
// Step 3: Run a while loop with the condition n>0 and at each iteration:
//
// Get the last digit of n by using the modulus operator % with 10 and store it in a temporary variable ld.
// Add the digit ld raised to the power of k of the sum.
// Update n by integer division with 10 effectively removing the last digit.
// Step 4: After the loop, check if the original input number is equal to the sum of the digits
// raised to the power of the number of digits in the number.
//
// If they are equal, return true indicating the number is an Armstrong number.
// If they are not equal, return false indicating that the number is not an Armstrong number.

void main() {
  int number = 371;
  bool result = Util.timeFunction('isArmstrong', () => isArmstrong(number));

  if (result) {
    print('$number is an armstrong number.');
  } else {
    print('$number is not an armstrong number.');
  }
}

/// Optimal
bool isArmstrong(int num) {
  List<int> arr = [];
  int sum = 0;
  int temp = num;

  while (temp != 0) {
    arr.add(temp % 10);
    temp = (temp / 10).toInt();
  }

  for (int i = 0; i < arr.length; i++) {
    sum += pow(arr[i], arr.length) as int;
  }

  if (sum == num) return true;

  return false;
}
