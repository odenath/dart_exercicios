// Elabore um programa que preencha uma matriz de 4x5, calcule e mostre um vetor com 5 posições, onde cada posição contém a soma dos
// elementos de cada coluna da matriz. O programa deverá mostrar apenas os elementos do vetores maiores que 10. Se não existir, deverá
// mostrar uma mensagem

import 'dart:math';

void main() {
  List<List<int>> matriz =
      List.generate(4, (i) => List.generate(5, (j) => Random().nextInt(20)));
  List<int> vetor = [];

  for (List<int> linha in matriz) {
    print(linha);
  }
  for (List<int> linha in matriz) {
    vetor.add(linha.reduce((a, b) => a + b));
  }
  print("");
  for (int e in vetor) {
    if (e > 10) {
      print(e);
    }
  }
}
