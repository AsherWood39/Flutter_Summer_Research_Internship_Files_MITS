void main() {
  print(1);
  fetchData1();
  fetchData2();
  print(4);
}

Future<void> fetchData1() async {
  print(2);
}

fetchData2() async {
  print(3);
}
