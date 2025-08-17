class Util {
  static T timeFunction<T>(String functionName, T Function() function) {
    final stopwatch = Stopwatch()..start();
    final result = function();
    stopwatch.stop();
    print('$functionName took: ${stopwatch.elapsedMicroseconds} microseconds (${stopwatch.elapsedMilliseconds} ms)');
    return result;
  }
}