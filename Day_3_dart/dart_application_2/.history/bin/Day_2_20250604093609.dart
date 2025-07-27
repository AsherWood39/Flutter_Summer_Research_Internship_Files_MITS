// ignore_for_file: file_names, non_constant_identifier_names

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
}

void main() {
  Person p = Person('Alice', 20);
  print('Name: ${p.name}\nAge: ${p.age}');
}
