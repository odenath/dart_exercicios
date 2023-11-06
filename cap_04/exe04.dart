//Faça um programa que receba 3 números e mostre o maior
import 'dart:io';

void main() {
  List number = [];
  double big = 0;
  for (int i = 0; i < 3; i++) {
    print("Digite o número ${i + 1}");
    number.add(double.parse(stdin.readLineSync() ?? '0'));
    print(number);
  }
  for (int i = 0; i < 3; i++) {
    if (number[i ] > big) {
      big = number[i];
    }
  }
  print("O maior número é o $big");
}
