class Animal {
  void sayHello() {
    print("Animal says Hello.\n");
  }
}

class Human extends Animal {
  void sayName() {
    print("Human says Name.\n");
  }
}

void main() {
  Animal a = Animal();
  a.sayHello();
  Human h = Human();
  h.sayHello();
  h.sayName();
}
