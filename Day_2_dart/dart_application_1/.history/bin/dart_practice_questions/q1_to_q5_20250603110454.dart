// Q1. Write a Dart program to declare variables of type int, double, String, bool, and var, and print their values.

void declaration() {
  // Declare variables of different types
  int myInt = 42;
  double myDouble = 3.14;
  String myString = 'Hello, Dart!';
  bool myBool = true;
  var myVar = 'This is a variable of type var';

  // Print the values of the variables
  print(
      'Integer value: $myInt\nDouble value: $myDouble\nString value: $myString\nBoolean value: $myBool\nVar value: $myVar');
}

// Q2. Create a program to convert temperature from Celsius to Fahrenheit using appropriate data types.

void celsius_to_fahrenheit() {
  // Declare a variable for temperature in Celsius
  double celsius = 25.0;

  // Convert Celsius to Fahrenheit
  double fahrenheit = (celsius * 9 / 5) + 32;

  // Print the result
  print('$celsius °C is equal to $fahrenheit °F');
}

// Q3.  Write a Dart program to find the average of three double values.
void average_of_three() {
  // Declare three double values
  double num1 = 10.5;
  double num2 = 20.0;
  double num3 = 30.5;

  // Calculate the average
  double average = (num1 + num2 + num3) / 3;

  // Print the result
  print('The average of $num1, $num2, and $num3 is $average');
}

// Q4.  Write a Dart program to check if a number is even or odd. Using if else
void check_even_odd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

// Q5.  Create a program to find the largest among three numbers using if-else.
void find_largest(int num1, int num2, int num3) {
  if (num1 >= num2 && num1 >= num3) {
    print('$num1 is the largest number.');
  } else if (num2 >= num1 && num2 >= num3) {
    print('$num2 is the largest number.');
  } else {
    print('$num3 is the largest number.');
  }
}

void main() {
  declaration();
  celsius_to_fahrenheit();
  average_of_three();
  check_even_odd(7);
  find_largest(10, 20, 15);
}
