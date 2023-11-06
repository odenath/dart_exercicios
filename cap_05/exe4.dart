//Faça um programa que receba um número, calcule e mostre a tabuada deste número

import 'dart:io';

void main() {
  int numeroTabuada = int.parse(stdin.readLineSync() ?? '0');

  for (int i = 0; i < 10; i++) {
    print('$numeroTabuada * ${i + 1} = ${numeroTabuada * (i + 1)}');
  }
}
