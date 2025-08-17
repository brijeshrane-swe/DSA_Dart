void main() {
  printNumbers(0, 101);
}

/// recursion - print without any iterators
void printNumbers(int current, int limit) {
  if (current >= limit) return;
  print(current);
  printNumbers(current+1, limit);
}