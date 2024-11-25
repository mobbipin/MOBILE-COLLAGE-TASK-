class Bird {
  void speak() {
    print("Bird chirps");
  }
}

class Dog {
  void speak() {
    print("Dog barks");
  }
}

class Cat {
  void speak() {
    print("Cat meows");
  }
}

void animalSpeak(dynamic animal) {
  animal.speak(); d
}

void main() {
  var bird = Bird();
  var dog = Dog();
  var cat = Cat();

  animalSpeak(bird); 
  animalSpeak(dog); 
  animalSpeak(cat);
}
