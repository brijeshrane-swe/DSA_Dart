import 'dart:io';
import 'dart:math';

/// Problem Statement: Given an integer N, print the following pattern :
/// Star Pyramid

void main() {
  printPattern7(4);
}

void printPattern7(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < sqrt(n) - i; j++) {
      stdout.write(' * ');
    }
    print('  ');
  }
}