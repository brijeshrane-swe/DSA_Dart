import 'dart:io';

/// Problem Statement: Given an integer N, print the following pattern :
/// Inverted Numbered Right Pyramid

void main() {
  printPattern6(4);
}

void printPattern6(int n) {
  for (int i = n; i > 0; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write(' $j ');
    }
    print('');
  }
}