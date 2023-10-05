//Faça um programa que leia 2 números e mostre o menor
import 'dart:io';

void main() {
  int number1 = int.parse(stdin.readLineSync() ?? '0');
  int number2 = int.parse(stdin.readLineSync() ?? '0');

  if (number1 < number2) {
    print(number1);
  } else if (number2 < number1) {
    print(number2);
  } else {
    print("$number1 é igual ao $number2");
  }
}
