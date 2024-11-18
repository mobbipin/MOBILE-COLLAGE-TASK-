import 'dart:io';
import 'dart:math';

void main() {
  int randomNumber = Random().nextInt(10) + 1;
  int attempts = 0;

  print('GUESS THE NUMBER BETWEEN ONE TO TEN');

  while (true) {
    stdout.write('ENTER YOUR GUESS : ');
    int guess = int.parse(stdin.readLineSync()!);
    attempts++;

    if (guess == randomNumber) {
      print('NICE, YOU GUESSED IT ON $attempts ATTEMPTS.');
      break;
    } else if (guess < randomNumber) {
      print('YOUR GUESS IS LOW , TRY AGAIN.');
    } else {
      print('YOUR GUESS IS HIGH , TRY AGAIN');
    }
  }
}
