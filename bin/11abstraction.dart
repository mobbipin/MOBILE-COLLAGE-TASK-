abstract class Animal {
  void speak();
}

class Dog extends Animal {
  @override
  void speak() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Cat meows");
  }
}

void main() {
  var dog = Dog();
  var cat = Cat();

  dog.speak();
  cat.speak();
}
