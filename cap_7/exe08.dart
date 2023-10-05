// Crie um programa que preencha duas matrizes 3x8 com números inteiros, calcule e mostre:
// -a soma das duas matrizes, resultando em uma terceira matriz também de ordem 3x8,
// -a diferença das duas matrizes, resultando em uma quarta matriz também de ordem 3x8.

import 'dart:math';

void main() {
  List<List<int>> matrizA = List.generate(
      3, (row) => List.generate(8, (collumn) => Random().nextInt(100)));
  List<List<int>> matrizB = List.generate(
      3, (row) => List.generate(8, (collumn) => Random().nextInt(100)));
  List<List<int>> matrizSoma =
      List.generate(3, (row) => List.generate(8, (collumn) => 0));
  List<List<int>> matrizSub =
      List.generate(3, (row) => List.generate(8, (collumn) => 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 8; j++) {
      matrizSoma[i][j] = (matrizA[i][j] + matrizB[i][j]);
      matrizSub[i][j] = (matrizA[i][j] - matrizB[i][j]);
    }
  }
  print("Matriz A");
  for (List<int> linha in matrizA) {
    print(linha);
  }
  print("Matriz B");
  for (List<int> linha in matrizB) {
    print(linha);
  }
  print("Matriz Soma ");
  for (List<int> linha in matrizSoma) {
    print(linha);
  }
  print("Matriz Subtração ");
  for (List<int> linha in matrizSub) {
    print(linha);
  }
}
