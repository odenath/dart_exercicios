// Faça uma sub-rotina que receba uma matriz 10x10 e determine o maior elemento acima
//da diagonal principal. Este valor deverá ser
// mostrado no programa principal.

import 'dart:math';

int maiorElementoDiagonal(List<List<int>> matrix) {
  List<int> diagonal = [];
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < 10; j++) {
      if (i == j) {
        diagonal.add(matrix[i][i]);
      }
    }
  }
  return diagonal.reduce((a, b) => a > b ? a : b);
}

void main() {
  List<List<int>> matrix = List.generate(
      10, (row) => List.generate(10, (number) => Random().nextInt(100)));

  for (List<int> linha in matrix) {
    print(linha);
  }
  print(maiorElementoDiagonal(matrix));
}
