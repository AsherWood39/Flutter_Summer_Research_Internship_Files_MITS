void main() {
  // 1.
  Student s = Student(name: 'John Doe', age: 13, grade: 'A');
  s.getValue();

  // 2.
  Rectangle r = Rectangle(length: 5.0, breadth: 3.0);
  r.area();
  r.perimeter();

  // 3.
  Person p = Person(name: "Alice", age: 25);
  print("\nPerson Name: ${p.name}\nAge: ${p.age}");

  // 4.
  Dog dog = Dog();
  Cat cat = Cat();
  dog.makeSound();
  cat.makeSound();

  // 5.
  Car car =
      Car(brand: "Toyota", year: 2020, model: "Corolla", fuelType: "Petrol");
  car.display();

  // 6.
  Shape rec = RectangleShape(length: 4.0, breadth: 2.0);
  Shape c = Circle(radius: 3.0);
  rec.area();
  c.area();
}

// Q1. Define a class Student with properties name, age, and grade, and the member function getValue() to display student details respectively. Create an object and using the object initialize the member variables, and get values of a student
class Student {
  String? name;
  int? age;
  String? grade;

  Student({required this.name, required this.age, required this.grade});

  void getValue() {
    print("Name: $name\tAge: $age\tGrade: $grade");
  }
}

// Q2. Create a class Rectangle with properties length and breadth. Write methods to calculate area and perimeter.
class Rectangle {
  double? length;
  double? breadth;

  Rectangle({required this.length, required this.breadth});

  void area() {
    print("\nArea of the rectangle: ${length! * breadth!}");
  }

  void perimeter() {
    print("Perimeter of the rectangle: ${2 * (length! + breadth!)}");
  }
}

// Q3. Define a class Person with a constructor that initializes name and age. Create and display the object.
class Person {
  String? name;
  int? age;

  Person({required this.name, required this.age});
}

// Q4. Create a base class Animal with a method makeSound(). Inherit it in Dog and Cat classes and override the method.
abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("\nDog barks");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

// Q5. Define a class Vehicle with properties like brand and year. Inherit it in a class Car and add additional properties like model and fuelType.
class Vehicle {
  String? brand;
  int? year;

  Vehicle({required this.brand, required this.year});
}

class Car extends Vehicle {
  String? model;
  String? fuelType;

  Car(
      {required String brand,
      required int year,
      required this.model,
      required this.fuelType})
      : super(brand: brand, year: year);

  void display() {
    print(
        "\nCar Brand: $brand\tYear: $year\tModel: $model\tFuel Type: $fuelType");
  }
}

// Q6. Create a base class Shape with a method area(). Inherit it in RectangleShape and Circle classes and override the area() method.
abstract class Shape {
  void area();
}

class RectangleShape extends Shape {
  double? length;
  double? breadth;

  RectangleShape({required this.length, required this.breadth});

  @override
  void area() {
    print("\nArea of the rectangle: ${length! * breadth!}");
  }
}

class Circle extends Shape {
  double? radius;

  Circle({required this.radius});

  @override
  void area() {
    print("Area of the circle: ${3.14 * radius! * radius!}");
  }
}
