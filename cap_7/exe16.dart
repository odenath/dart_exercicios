// Faça um programa que preencha e mostre a média dos elementos da diagonal principal de uma matriz 10x10.

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      10, (index) => List.generate(10, (index) => Random().nextInt(100)));
  int media = 0;

  for (List<int> linha in matriz) {
    print(linha);
  }
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz.length; j++) {
      if (i == j) {
        media += matriz[i][j];
      }
    }
  }
  print(media);
}
