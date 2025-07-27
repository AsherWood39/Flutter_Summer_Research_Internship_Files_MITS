// ignore_for_file: file_names, non_constant_identifier_names

class Person {
  String? name;
  int? age;

  Person(int age, String name) {
    this.name = name;
    this.age = age;
  }
}

void main() {
  Person p = Person(20, 'Alice');
  print('Name: ${p.name}\nAge: ${p.age}');
}
