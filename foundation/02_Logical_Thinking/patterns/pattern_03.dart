import 'dart:io';

/// Problem Statement: Given an integer N, print the following pattern :
/// Right-Angled Number Pyramid

void main() {
  printPattern3(4);
}

void printPattern3(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(' $j ');
    }
    print('');
  }
}