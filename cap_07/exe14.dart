// Crie um programa que preencha uma matriz 12x13 e divida todos os elementos de cada linha pelo maior elemento em cada módulo daquela
// linha. O programa deverá escrever a matriz lida e modificada.

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      12, (index) => List.generate(13, (index) => Random().nextInt(100)));
  int maior = 0;

  for (List<int> linha in matriz) {
    print(linha);
  }
  for (List<int> linha in matriz) {
    maior = linha.reduce((a, b) => a > b ? a : b);
    print(linha.map((e) => e * maior).toList());
  }
}
