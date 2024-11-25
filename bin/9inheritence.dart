class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print('$name makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);
  @override
  void speak() {
    print('$name barks!');
  }
}

void main() {
  var dog = Dog("Rex", "German Shepherd");
  dog.speak();
}
