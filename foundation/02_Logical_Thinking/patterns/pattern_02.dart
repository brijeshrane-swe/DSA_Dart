import 'dart:io';

/// Problem Statement: Given an integer N, print the following pattern :
/// Right-Angled Triangle Pattern

void main() {
  printPattern2(4);
}

void printPattern2(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(' * ');
    }
    print('');
  }
}