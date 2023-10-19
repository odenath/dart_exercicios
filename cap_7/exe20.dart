// Faça um programa que preencha uma matriz 5x5 de números reais. A seguir, o programa deverá multiplicar cada linha pelo elemento da 
// diagonal principal daquela linha e mostrar a matriz após as multiplicações.

import 'dart:math';

void main() {
  List<List<double>> matriz = List.generate(
      5, (i) => List.generate(5, (j) => Random().nextDouble() * 100));
  List<double> vetorDiagonal = List.filled(5, 0);
  double maior;
  double temp;

  for (List<double> linha in matriz) {
    print(linha.map((e) => e.toStringAsFixed(2)).toList());
  }
  print("");
  maior = matriz.expand((linha) => linha).reduce((a, b) => a > b ? a : b);
  print(maior);
  for (int i = 0; i < matriz.length; i++) {
    temp = matriz[i][i];
    for (int j = 0; j < matriz.length; j++) {
      if (i == j) {
        vetorDiagonal[i] = matriz[i][j];
       
      }
       matriz[i][j] *= temp;
      
    }
  }
  print("");
  for (double e in vetorDiagonal) {
    print(e.toStringAsFixed(2));
  }
  print("");
  for (List<double> linha in matriz) {
    print(linha.map((e) => e.toStringAsFixed(2)).toList());
  }
}