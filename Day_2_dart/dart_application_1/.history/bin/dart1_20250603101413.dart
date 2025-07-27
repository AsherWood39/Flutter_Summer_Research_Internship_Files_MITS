void add({int? a, int? b}) {
  if (a == null || b == null) {
    print('Both a and b must be provided.');
    return;
  }
  print(a + b);
}

void subtract({required int? a, required int? b}) {
  print(a! - b!);
}

void main() {
  add(b: 20, a: 10); // Named parameter order doesn't matter
  add(a: 10); // Optional parameter

  subtract(a: 20, b: 10); // Required parameters
}
