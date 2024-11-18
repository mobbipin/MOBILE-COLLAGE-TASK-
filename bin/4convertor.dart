import 'dart:io';

void main() {
  print('CHOOSE WHAT TO CONVERT :');
  print('1. CELSIUS TO FAHRENHEIT');
  print('2. FAHRENHEIT TO CELSIUS');

  String? choice = stdin.readLineSync();

  if (choice == '1') {
    print('ENTER NUMBER : ');
    double? celsius = double.tryParse(stdin.readLineSync()!);

    if (celsius == null) {
      print('ERROR');
    } else {
      double fahrenheit = (celsius * 9 / 5) + 32;
      print('$celsius°C IS EQUAL TO $fahrenheit°F');
    }
  } else if (choice == '2') {
    print('ENTER NUMBER');
    double? fahrenheit = double.tryParse(stdin.readLineSync()!);

    if (fahrenheit == null) {
      print('ERROR');
    } else {
      double celsius = (fahrenheit - 32) * 5 / 9;
      print('$fahrenheit°F IS EQUAL TO $celsius°C');
    }
  } else {
    print('CHOOSE 1 OR 2');
  }
}
