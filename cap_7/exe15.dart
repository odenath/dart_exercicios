// Elabore um programa que preencha uma matriz 5 x 5 e crie dois vetores de 5 posições cada um,
// que contenham, respectivamente, as somas das linhas e das colunas da matriz.
// O programa deverá escrever a matriz e os vetores criados.

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      5, (row) => List.generate(5, (collumn) => Random().nextInt(100)));
  List<int> somaLinhas = List.generate(5, (index) => 0);
  List<int> somaColunas = List.generate(5, (index) => 0);

  for (List<int> linha in matriz) {
    print(linha);
  }
  for (int i = 0; i < matriz.length; i++) {
    somaLinhas[i] = matriz[i].reduce((a, b) => a + b);
  }
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < somaLinhas.length; j++) {
      somaColunas[i] += matriz[j][i];
    }
  }
  for (int linha in somaLinhas) {
    print(linha);
  }
  print("");
  for (int linha in somaColunas) {
    print(linha);
  }
}
