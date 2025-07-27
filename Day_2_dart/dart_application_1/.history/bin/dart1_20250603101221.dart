void add({int? a, int? b}) {
  print(a! + b!);
}

void subtract({required int? a, required int? b}) {
  print(a! - b!);
}

void main() {
  add(b: 20, a: 10);
  add(a: 10);

  subtract(a: 20, b: 10);
}
