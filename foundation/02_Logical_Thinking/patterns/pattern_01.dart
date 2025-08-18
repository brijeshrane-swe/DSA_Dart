import 'dart:io';

/// Problem Statement: Given an integer N, print the following pattern.
/// Rectangular Star Pattern

void main() {
  printPattern1(5);
}

void printPattern1(int n) {
  for (int i=0; i<n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write(' * ');
    }
    print('');
  }
}