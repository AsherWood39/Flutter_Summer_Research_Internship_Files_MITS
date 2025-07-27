// ignore_for_file: file_names

class Person {
  String name = 'Alice';
  int age = 30;
}

void main() {
  Person p = Person();
  print('Name: ${p.name}, Age: ${p.age}');

  p.name = 'Bob';
  p.age = 25;

  print('Updated Name: ${p.name}, Updated Age: ${p.age}');
}
