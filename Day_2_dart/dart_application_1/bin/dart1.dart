void main() {
  print(1);
  fetchData1();
  fetchData2();
  print(4);
}

Future<void> fetchData1() async {
  await Future.delayed(Duration(seconds: 3)); // Simulate a delay
  // This function simulates fetching data asynchronously.
  print(2);
}

fetchData2() async {
  await Future.delayed(Duration(seconds: 5)); // Simulate a delay
  // This function simulates fetching data asynchronously.
  print(3);
}
