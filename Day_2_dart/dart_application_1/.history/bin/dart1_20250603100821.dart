void sum1(int? a, int? b) {
  return (a + b);
}

void sum3(required int a, required int b) {
  print(a + b);
}

void main() {
  sum3(1, 2);
  sum4();
  print(sum1(10, 2));
  print(sum2());
}
