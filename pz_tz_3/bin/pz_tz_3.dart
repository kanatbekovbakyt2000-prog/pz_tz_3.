// Практические задания 1-4: таймер (for), попугай (while), чётные числа (continue), сейф (do-while).

import 'dart:io';

void main() {
  print('===== Задание 1: Таймер =====');

  for (int timerValue = 10; timerValue >= 1; timerValue--) {
    print(timerValue);
  }
  print('Старт!');
  print('');

  print('===== Задание 2: Попугай =====');

  String parrotWord = '';
  while (true) {
    print('Скажите что-нибудь (для выхода введите "стоп"):');
    parrotWord = stdin.readLineSync()!;

    if (parrotWord == 'стоп') {
      print('Попугай замолчал');
      break;
    }
    print(parrotWord);
  }
  print('');

  print('===== Задание 3: Чётные числа =====');

  for (int number = 1; number <= 20; number++) {
    if (number % 2 != 0) {
      continue;
    }
    print(number);
  }
  print('');

  print('===== Задание 4: Сейф =====');

  String pinCode;
  do {
    print('Введите пин-код:');
    pinCode = stdin.readLineSync()!;

    if (pinCode != '1234') {
      print('Неверный пин-код');
    }
  } while (pinCode != '1234');
  print('Сейф открыт!');
}
