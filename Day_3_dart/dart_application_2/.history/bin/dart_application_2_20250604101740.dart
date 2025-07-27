abstract class Animal {
  void sayHello();
}

class Human extends Animal {
  @override
  void sayHello() {
    print('Human says Hello');
  }

  void sayName() {
    print("Human says Name");
  }
}

void main() {
  Human h = Human();
  h.sayHello();
  h.sayName();
}
