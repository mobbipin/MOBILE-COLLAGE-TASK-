import 'dart:io';

void main() {
  stdout.write('ENTER FIRST NUMBER ');
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write('ENTER SECOND NUMBER : ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Sum: ${num1 + num2}');
}
