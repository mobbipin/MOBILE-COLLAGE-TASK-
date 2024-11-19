import 'dart:io';

void calculateSimpleInterest({
  required double principal,
  required double rate,
  required double time,
}) {
  double simpleInterest = (principal * rate * time) / 100;

  print("SIMPLE INTEREST :  $simpleInterest");
}

void main() {
  print("Enter details to calculate Simple Interest:");
  stdout.write("ENTER PRINCIPLE: ");
  double principal = double.parse(stdin.readLineSync()!);

  stdout.write("ENTER RATE: ");
  double rate = double.parse(stdin.readLineSync()!);

  stdout.write("ENTER TIME: ");
  double time = double.parse(stdin.readLineSync()!);

  calculateSimpleInterest(principal: principal, rate: rate, time: time);
}
