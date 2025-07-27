int sum1(int a, int b) {
  return (a + b);
}

int sum2() {
  return (10 + 20);
}

void sum3(int a, int b) {
  print(a + b);
}

void sum4() {
  print(10 + 20);
}

void main() {
  sum3(1, 2);
  sum4();
  print(sum1(10, 2));
  print(sum2());
}
