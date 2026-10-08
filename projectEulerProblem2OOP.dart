void main(List<String> args) {
  List<int> fibonacciNumbers =   OOPEvenFibonacciNumsSum().fibonacciNumbersGenerator(4000000);
  OOPEvenFibonacciNumsSum().evenFibonacciNumsSum(fibonacciNumbers);
}

class OOPEvenFibonacciNumsSum {

  List<int> fibonacciNumbersGenerator(int end) {
    List<int> fibonacciNumbers = [1, 1];
    int nextFibonacciNumber = 2;
    // Fibbonacci number:
    // number (n) = number (n-1) + number (n+1)
    while (nextFibonacciNumber <= end) {
      fibonacciNumbers.add(nextFibonacciNumber);
      nextFibonacciNumber =
          fibonacciNumbers.last + fibonacciNumbers[fibonacciNumbers.length - 2];
    }
    return fibonacciNumbers;
  }

  void evenFibonacciNumsSum(List<int> fibonacciNumbers) {
    int sum = 0;

    //* After observing the fibonnaci numbers you result this pattern:
    //* [odd, odd, even, odd, odd, even ...]
    //* Because the two first element are odd numbers & depending on these
    //* next rules:
    //* odd + odd = even,
    //* even + odd = odd,
    //* The pattern will be created

    for (int i = 2; i < fibonacciNumbers.length; i += 3) {
      sum += fibonacciNumbers[i];
    }
    print(sum);
  }
}
