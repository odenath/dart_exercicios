// Faça um programa que preencha uma matriz 3x4, calcule e mostre:
// a quantidade de elementos pares
// a soma dos elementos ímpares
// a média de todos os elementos

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      3, (row) => List.generate(4, (index) => Random().nextInt(100)));
  int qtdPares = 0;
  int somaImpares = 0;
  int media;

  for (List<int> linha in matriz) {
    print(linha);
  }
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < 4; j++) {
      if (matriz[i][j] % 2 == 0) {
        qtdPares++;
      }
      if (matriz[i][j] % 2 != 0) {
        somaImpares += matriz[i][j];
      }
    }
  }
  media =
      matriz.expand((e) => e).reduce((a, b) => a + b) ~/ (matriz.length * 4);
  print("O número de pares é de $qtdPares");
  print("A soma dos número ímpares é de $somaImpares");
  print("A média dos números é de $media");
}
