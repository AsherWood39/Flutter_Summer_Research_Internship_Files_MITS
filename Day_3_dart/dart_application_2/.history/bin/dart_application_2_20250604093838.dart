class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
}

class Vehicle {
  String? name;
  String? color;
  int? model;

  Vehicle(this.name, this.color, this.model);
}

void main() {
  Person p = Person('Alice', 20);
  print('Name: ${p.name}\nAge: ${p.age}');

  Vehicle v = Vehicle('Car', 'Red', 2020);
  print('Vehicle Name: ${v.Name}\nColor: ${v.color}\nModel: ${v.model}');
}
