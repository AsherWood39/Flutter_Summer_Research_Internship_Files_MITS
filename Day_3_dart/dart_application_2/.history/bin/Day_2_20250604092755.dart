// ignore_for_file: file_names

class Person {
  String? name;
  int? age;
}

void main() {
  Person p = Person();
  print('Before Updation\nName: ${p.name}\nAge: ${p.age}');

  p.name = 'Bob';
  p.age = 25;

  print('\nAfter Updation\nName: ${p.name}\nAge: ${p.age}');
}
