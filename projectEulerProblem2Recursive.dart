/*
 - Recursion Concept Explanation:
    
    "
     * Every recursive function requires two essential parts:
        -Base Case: The condition that stops the recursion and returns a result directly. 
         Without it, the function enters an infinite loop and crashes with a StackOverflowError.
        -Recursive Step: The logic where the function calls itself with a modified input that moves 
         closer to the base case. (From Gemini )
    "
        - The recursion concept contains loop; it repeats the same operation for pre-determined times
        - Any loop has initialization, Termination, Increment & Body 
        What are the elements that do the same functions in the recursion
        initialization: From where the iteration body or recursion body begins.
        what does this mean in real? if you have maximum possible number of operations you can do, and, 
        you don't want to begin from the most first operation, but, from pre-determined operation that gives 
        an initial return you want.
        but how can you apply this understanding in the recursion concept?
        If we took a look into the iteration concept wherever its type: for loop, while loop ...
        Chosing the initializtion can be done from the initialization index in the for loop, but, you can
        change it inside the body, in the while loop you can choose it before the body, then you change it
        inside it & the same thing for the recursion, you can chose it the function args then you change it
        inside the function.
        termination: is the condition that stops the iteration in the loop & it is the base case in 
        the recursion
        increment: is the step you made to move through the data, & through it you can know or determine 
        the number of the operations you want do.
        body: the operations you want to apply on the called data.
*/
// ToDo: The recursive method
import 'fibonacciNumbersGenerator.dart';

List<int> fibonacciNumbers = fibonacciNumbersGenerator(4000000);
void main() {
  int sum = 0;

  //* After observing the fibonnaci numbers you result this pattern:
  //* [odd, odd, even, odd, odd, even ...]
  //* Because the two first element are odd numbers & depending on these
  //* next rules:
  //* odd + odd = even,
  //* even + odd = odd,
  //* The pattern will be created

  sum = rercursiveEvenFibonacciNumsSum(2, sum);
  print(sum);
}

int rercursiveEvenFibonacciNumsSum(int index, int result) {
  if (index < fibonacciNumbers.length) {
    result = rercursiveEvenFibonacciNumsSum(
      index + 3,
      result + fibonacciNumbers[index],
    );
  }
  return result;
}
