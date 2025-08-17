import '../../utilities.dart';
import 'dart:io';

void main() {
  int number = 5;
  Util.timeFunction('printFibonacci', () => printFibonacci(number));
}

void printFibonacci(int number) {
  stdout.write('Fibonacci sequence: ');

  if (number < 2) {
    stdout.write(number);
    return;
  }

  _printFibonacciSequence(number);
}

void _printFibonacciSequence(int limit) {
  int current = 0;
  int next = 1;

  stdout.write('$current $next ');

  while (true) {
    int fibonacci = current + next;
    if (fibonacci > limit) break;

    stdout.write('$fibonacci ');
    current = next;
    next = fibonacci;
  }
  print('');
}
