// Q6.  Write a Dart program to check if a number is even or odd using Ternary Operator
void check_even_odd_ternary(int number) {
  String result = (number % 2 == 0) ? '$number is even.' : '$number is odd.';
  print(result);
}

// Q7.  Create a program to find the largest among three numbers using Ternary Operator.
void find_largest_ternary(int num1, int num2, int num3) {
  String largest = (num1 >= num2)
      ? (num1 >= num3
          ? '$num1 is the largest number.'
          : '$num3 is the largest number.')
      : (num2 >= num3
          ? '$num2 is the largest number.'
          : '$num3 is the largest number.');
  print(largest);
}
