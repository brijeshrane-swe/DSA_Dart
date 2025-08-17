/// Problem Statement: Given an integer N return the reverse of the given number.

// To reverse the digits of a number, we can use the algorithm created in
// Extract Digits as now instead of extracting digits we are simply appending them to the reversed number.

// Algorithm
// Step 1:Initialise an integer revNum to 0. This variable will store the reversed number.
//
// Step 2: Using a while loop we iterate while n is greater than 0 and at each iteration:
//
// Calculate the last digit of the number using the modulus operator (N%10) and store it in a variable last digit.
// Update the reversed number by multiplying it with 10 and
// adding the last digit. This effectively appends the last digit to the end of the reversed number.
// Remove the last digit of the number by dividing it by 10.
// Step 3: After exiting the while loop, return the reversed number.

void main() {
  int number = 12345;
  int result = reverseNumber(number);
  print('Th reverse of $number is $result');
}

/// Bruteforce
int reverseNumber(int num) {
  int rev = 0;

  while (num != 0) {
    int lastDigit = num % 10; 
    rev = rev * 10 + lastDigit;
    num = (num / 10).toInt();
  }
  return rev;
}

/// Optimal