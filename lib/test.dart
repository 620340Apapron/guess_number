import 'dart:math';
import 'dart:io';
// ignore_for_file: avoid_print

void main() {
  var i = 0;
  var r = Random();
  var countguess = 0;
  var answer = r.nextInt(100) + 1;
  print('Guess the Number');
  print('=========================================');
  do {
    stdout.write('guess the number between 1 and 100 : ');
    var num = stdin.readLineSync();
    var numguess = int.tryParse(num!);
    if (numguess == null) {
      do {
        stdout.write('guess the number between 1 and 100 : ');
        num = stdin.readLineSync();
        numguess = int.tryParse(num!);
      } while (numguess == null);
    }
    countguess++;
    if (numguess == answer) {
      print('➜ $numguess is correct!, total guesses: $countguess');
      print('=========================================');
      print('THE END');
      break;
    } else {
      if (numguess > answer) {
        print('➜ $numguess is too high!');
        print('=========================================');
      } else {
        print('➜ $numguess id too low!');
        print('=========================================');
      }
    }
  } while (true);
}
