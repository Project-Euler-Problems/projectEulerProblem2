List<int> fibonacciNumbersGenerator(int end) {
  List<int> fibonacciNumbers = [1, 1];
  int nextFibonacciNumber = 2;

  while (nextFibonacciNumber <= end) {
    fibonacciNumbers.add(nextFibonacciNumber);
    // Fibbonacci number:
    // number (n) = number (n-1) + number (n+1)
    nextFibonacciNumber =
        fibonacciNumbers.last + fibonacciNumbers[fibonacciNumbers.length - 2];
  }
  return fibonacciNumbers;
}
