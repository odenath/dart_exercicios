// Faça um programa que preencha uma matriz 3x5 com números inteiros,
// calcule e mostre a qtd de elementos entre 15 e 20.

import 'dart:math';

void main() {
  List<List<int>> lista = List.generate(
      3, (row) => List.generate(5, (number) => Random().nextInt(21)));
  int qtd = 0;
  for (List<int> linha in lista) {
    print(linha);
  }
  for (List<int> linha in lista) {
    for (int number in linha) {
      if (number >= 15 && number <= 20) {
        qtd++;
        print(number);
      }
    }
  }
  print("Totalizou $qtd números entre 15 e 20");
}
