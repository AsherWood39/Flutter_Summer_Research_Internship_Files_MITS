// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:html_common';

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
}

class Vehicle {
  String? Name;
  String? color;
  int? model;

  Vehicle(this.Name, this.color, this.model);
}

void main() {
  Person p = Person('Alice', 20);
  print('Name: ${p.name}\nAge: ${p.age}');

  Vehicle v = Vehicle('Car', 'Red', 2020);
  print('Vehicle Name: ${v.Name}\nColor: ${v.color}\nModel: ${v.model}');
}
