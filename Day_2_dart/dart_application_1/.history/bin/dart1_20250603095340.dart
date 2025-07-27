void main() {
  List<int> myIntergerList = [];
  List<String> myNameList = ['a', 'b', 'c'];

  for (var i = 0; i < 10; i++) {
    myIntergerList.add(i);
  }

  for (var i in myIntergerList) {
    print(i);
  }

  for (var doc in myNameList) {
    print(doc);
  }
}
