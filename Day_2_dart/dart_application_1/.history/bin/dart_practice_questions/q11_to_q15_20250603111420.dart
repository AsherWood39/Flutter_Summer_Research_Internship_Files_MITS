// Q11.  Create a function that returns the factorial of a number.
int factorial(int n) {
  if (n < 0) {
    throw ArgumentError('Factorial is not defined for negative numbers.');
  }
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

// Q12. Write a program with a function that accepts two numbers and returns their sum.
// Q13. Write a function that takes named parameters for name, age, and city, and displays a formatted string.
// Q14. Write a function that accepts two required parameters (Mark1, and Mark 2) and one optional parameter (Grace Marks), which optional parameter if provided, adds a bonus to the sum.
// Q15. Write an async function that waits for 3 seconds and then prints "Hello after delay".
