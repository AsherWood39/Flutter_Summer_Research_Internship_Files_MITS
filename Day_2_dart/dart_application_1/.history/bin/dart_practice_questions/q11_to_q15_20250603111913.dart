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
int sum(int a, int b) {
  return a + b;
}

// Q13. Write a function that takes named parameters for name, age, and city, and displays a formatted string.
String displayInfo({String? name, int? age, String? city}) {
  return 'Name: $name, Age: $age, City: $city';
}

// Q14. Write a function that accepts two required parameters (Mark1, and Mark 2) and one optional parameter (Grace Marks), which optional parameter if provided, adds a bonus to the sum.
int calculateTotalMarks(
    {required int Mark1, required int Mark2, int? GraceMarks}) {
  int total = Mark1 + Mark2;
  if (GraceMarks != null) {
    total += GraceMarks;
  }
  return total;
}

// Q15. Write an async function that waits for 3 seconds and then prints "Hello after delay".
delayedHello() async {
  await Future.delayed(Duration(seconds: 3));
  print('Hello after delay');
}

// Main function to test the above functions
void main() {
  print('Factorial of 5: ${factorial(-1)}');
  print('Sum of 10 and 20: ${sum(10, 20)}');
  print(displayInfo(name: 'Alice', age: 30, city: 'New York'));
  print(
      'Total Marks (with Grace Marks): ${calculateTotalMarks(Mark1: 85, Mark2: 90, GraceMarks: 5)}');
  print(
      'Total Marks (without Grace Marks): ${calculateTotalMarks(Mark1: 85, Mark2: 90)}');
  delayedHello();
}
