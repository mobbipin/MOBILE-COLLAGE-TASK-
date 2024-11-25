class Car {
  String make;
  String model;
  int _year;

  Car(this.make, this.model, this._year);

  int get year => _year;

  set year(int year) {
    if (year > 2000) {
      _year = year;
    } else {
      print("Invalid year");
    }
  }
}

void main() {
  var car = Car("Toyota", "Corolla", 2020);
  print(car.year);
  car.year = 2021;
}
