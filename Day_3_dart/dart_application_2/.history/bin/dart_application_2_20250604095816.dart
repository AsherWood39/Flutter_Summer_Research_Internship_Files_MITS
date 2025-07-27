class Person {
  String? name;
  int? _age;

  Person({int? age = 0, required this.name});

  void showPerson() {
    print('Name: $name\nAge: $_age');
  }
}

class Vehicle {
  String? name;
  String? color;
  int? model;

  Vehicle(this.name, this.color, this.model);
}

void main() {
  Person p = Person(name: 'John Doe', age: 30);
  p.showPerson();

  Vehicle v = Vehicle('Car', 'Red', 2020);
  print('\nVehicle Name: ${v.name}\nColor: ${v.color}\nModel: ${v.model}');
}
