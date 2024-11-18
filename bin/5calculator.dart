import 'dart:io';

void main() {
  print('CHOOSE :');
  print('1. ADD (+)');
  print('2. SUBTRACT (-)');
  print('3. MULTIPLY (*)');
  print('4. DIVIDE (/)');

  String? operation = stdin.readLineSync();

  if (operation == null || !['1', '2', '3', '4'].contains(operation)) {
    print('CHOOSE FROM 1-4');
    return;
  }

  print('ENTER NUMBER 1:');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  print('ENTER NUMBER 2:');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  if (num1 == null || num2 == null) {
    print('NOT A NUMBER');
    return;
  }

  double result;

  switch (operation) {
    case '1':
      result = num1 + num2;
      print('RESULT: $num1 + $num2 = $result');
      break;
    case '2':
      result = num1 - num2;
      print('RESULT: $num1 - $num2 = $result');
      break;
    case '3':
      result = num1 * num2;
      print('RESULT: $num1 * $num2 = $result');
      break;
    case '4':
      if (num2 == 0) {
        print('Error: Cannot divide by zero.');
      } else {
        result = num1 / num2;
        print('RESULT: $num1 / $num2 = $result');
      }
      break;
    default:
      print('ERROR');
      break;
  }
}
