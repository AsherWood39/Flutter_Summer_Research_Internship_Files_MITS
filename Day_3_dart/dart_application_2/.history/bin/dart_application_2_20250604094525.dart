class Person {
  String? name;
  int? age;

  Person({this.age = 0, required this.name});
}

class Vehicle {
  String? name;
  String? color;
  int? model;

  Vehicle(this.name, this.color, this.model);
}

void main() {
  Person p = Person(name: 'John Doe', age: 30);
  print('Name: ${p.name}\nAge: ${p.age}');

  Vehicle v = Vehicle('Car', 'Red', 2020);
  print('\nVehicle Name: ${v.name}\nColor: ${v.color}\nModel: ${v.model}');
}
