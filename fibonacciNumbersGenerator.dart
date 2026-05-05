List<int> fibonacciNumbersGenerator(int end) {
  List<int> fibonacciNumbers = [1, 1];
  int nextFibonacciNumbers = 2;

  while (nextFibonacciNumbers <= end) {
    fibonacciNumbers.add(nextFibonacciNumbers);
    nextFibonacciNumbers =
        fibonacciNumbers.last + fibonacciNumbers[fibonacciNumbers.length - 2];
  }
  return fibonacciNumbers;
}
