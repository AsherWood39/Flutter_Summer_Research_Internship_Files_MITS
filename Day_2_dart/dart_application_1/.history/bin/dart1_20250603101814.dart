void add({required int? a, required int? b, int? c}) {
  if (a == null || b == null || c == null) {
    print('a, b and c must be provided.');
    return;
  }
  print(a + b + c);
}

void main() {
  add(b: 20, a: 10); // Named parameter order doesn't matter
  add(a: 10, b: 20, c: 30); // All parameters provided
}
