import 'dart:io';

/// Problem Statement: Given an integer N, print the following pattern :
/// Inverted Star Pyramid

void main() {
  printPattern8(5);
}

void printPattern8(int n) {
  // Add input validation
  if (n <= 0) {
    print('Invalid input: n must be positive');
    return;
  }
  
  for (int i = 0; i < n; i++) {
    // Print leading spaces (starts from 0, increases by 1 each row)
    for (int k = 0; k < i; k++) {
      stdout.write(' ');
    }
    
    // Print stars with spaces (decreases each row)
    for (int j = 0; j < n - i; j++) {
      stdout.write('* ');
    }
    
    print('');
  }
}