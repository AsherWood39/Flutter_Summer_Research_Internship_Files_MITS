void main() {
  print(1);
  fetchData1();
  fetchData2();
  print(4);
}

Future<void> fetchData1() async {
  print(2);
  await Future.delayed(Duration(seconds: 1), () => print(6));
}

fetchData2() async {
  print(3);
  await Future.delayed(Duration(seconds: 1), () => print(5));
}
