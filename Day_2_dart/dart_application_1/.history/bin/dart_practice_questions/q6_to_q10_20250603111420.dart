// Q6. Write a Dart program to check if a number is even or odd using Ternary Operator
void checkEvenOddTernary(int number) {
  String result = (number % 2 == 0) ? '$number is even.' : '$number is odd.';
  print(result);
}

// Q7. Create a program to find the largest among three numbers using Ternary Operator.
void findLargestTernary(int num1, int num2, int num3) {
  String largest = (num1 >= num2)
      ? (num1 >= num3
          ? '$num1 is the largest number.'
          : '$num3 is the largest number.')
      : (num2 >= num3
          ? '$num2 is the largest number.'
          : '$num3 is the largest number.');
  print(largest);
}

// Q8. Write a Dart program to print numbers from 1 to 10 using a for loop.
void printNumbersForLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Q9. Print all even numbers from 1 to 50 using a for loop.
void printEvenNumbersForLoop() {
  for (int i = 1; i <= 50; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// Q10. Write a Dart function to calculate the square of a number.
int calculateSquare(int number) {
  return number * number;
}

// Main function to test the above functions
void main() {
  checkEvenOddTernary(8);
  findLargestTernary(10, 20, 15);
  printNumbersForLoop();
  printEvenNumbersForLoop();
  int square = calculateSquare(4);
  print('The square of 4 is $square');
}
