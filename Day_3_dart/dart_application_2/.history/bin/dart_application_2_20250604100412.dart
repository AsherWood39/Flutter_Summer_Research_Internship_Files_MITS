class Animal {
  void sayHello() {
    print("Animal says Hello.");
  }
}

class Human extends Animal {
  void sayName() {
    print("Human says Name.");
  }
}

void main() {
  Animal a = Animal();
  a.sayHello();

  Human h = Human();
  h.sayHello();
  h.sayName();
}
