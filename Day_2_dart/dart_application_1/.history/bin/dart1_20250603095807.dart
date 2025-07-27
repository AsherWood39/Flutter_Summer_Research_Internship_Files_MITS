void add(int a, int b) {
  print(a + b);
}

void subtract(int a, int b) {
  print(a - b);
}

void multiply(int a, int b) {
  print(a * b);
}

void divide(int a, int b) {
  if (b == 0) {
    print("Cannot divide by zero");
  }
  print(a ~/ b); // Integer division
}

void main() {
  add(1, 2);
  subtract(5, 3);
  multiply(4, 6);
  divide(8, 2);
}
