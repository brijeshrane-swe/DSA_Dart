import 'dart:io';

/// Problem Statement: Given an integer N, print the following pattern :
/// Inverted Right Pyramid

void main() {
  printPattern5(4);
}

void printPattern5(int n) {
  for (int i = n; i > 0; i--) {
    for (int j = 0; j < i; j++) {
      stdout.write(' * ');
    }
    print('');
  }
}