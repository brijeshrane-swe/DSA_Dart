import 'dart:io';

/// Problem Statement: Given an integer N, print the following pattern :
/// Right-Angled Number Pyramid - II

void main() {
  printPattern4(4);
}

void printPattern4(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(' $i ');
    }
    print('');
  }
}