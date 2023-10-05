// Crie um programa que preencha uma matriz 5x5 de números reais,
// calcule e mostre a soma dos elementos da diagonal secundária;

import 'dart:math';

void main() {
  List<List<int>> matriz =
      List.generate(5, (i) => List.generate(5, (j) => Random().nextInt(100)));
  int soma = 0;

  for (List<int> linha in matriz) {
    print(linha);
  }
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz.length; j++) {
      if (i + j == matriz.length - 1) {
        soma += matriz[i][j];
      }
    }
  }
  print(soma);
}
