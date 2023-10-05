// Elabora um programa que preencha uma matriz M de ordem 4x 6 e uma segunda de matriz N de ordem 6x4,
// calcule e imprima a soma das linhas M com as colunas de N.

import 'dart:math';

void main() {
  List<List<int>> matrizM = List.generate(
      4, (ROW) => List.generate(6, (collumn) => Random().nextInt(100)));
  List<List<int>> matrizN = List.generate(
      6, (ROW) => List.generate(4, (collumn) => Random().nextInt(100)));
  List<List<int>> matrizFinal =
      List.generate(4, (row) => List.generate(4, (collumn) => 0));

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      matrizFinal[i][j] = matrizM[i][j] + matrizN[j][i];
    }
  }
  for (List<int> linha in matrizM) {
    print(linha);
  }
  for (List<int> linha in matrizN) {
    print(linha);
  }
  for (List<int> linha in matrizFinal) {
    print(linha);
  }
}
