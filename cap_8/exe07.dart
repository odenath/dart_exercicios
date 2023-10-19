//Elabore uma sub-rotina que leia um número não determinado de valores positivos e retorne a média aritméttica desses valores

import 'dart:io';

double mediaAritmetica(List<int> numeros) {
  return numeros.reduce((a, b) => (a + b) )/numeros.length;
}

void main() {
  List<int> numeros = [];
  print("Digite a quantidade de números que deseja inserir");
  int quantidade = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 0; i < quantidade; i++) {
    print("Digite o número");
    numeros.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  print(mediaAritmetica(numeros));
}
