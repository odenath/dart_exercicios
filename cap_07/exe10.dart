// Crie um programa que preencha uma matriz 5x5 com números inteiros, calcule e mostre a soma;
// -dos elementos da linha 4
// -dos elementos da coluna 2
// -dos elementos da diagonal principal
// -dos elementos da diagonal secundária
// -de todos os elementos da matriz;

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      5, (row) => List.generate(5, (collumn) => Random().nextInt(100)));
  int linha4 = 0;
  int coluna2 = 0;
  int diagonalP = 0;
  int diagonalS = 0;
  int todos = 0;

  for(List<int> linha in matriz){
    print(linha);
  } 

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (i == 4) {
        linha4 += matriz[i][j];
      }
      if (j == 2) {
        coluna2 += matriz[i][j];
      }
      if (i == j) {
        diagonalP += matriz[i][j];
      }
      if (i + j == 4) {
        diagonalS += matriz[i][j];
      }
      todos += matriz[i][j];
    }
  }
  print("A soma dos elementos da linha 4 é: $linha4");
  print("A soma dos elementos da coluna 2 é: $coluna2");
  print("A soma dos elementos da diagonal principal é: $diagonalP");
  print("A soma dos elementos da diagonal secundária é: $diagonalS");
  print("A soma de todos os elementos da matriz é: $todos");

}
