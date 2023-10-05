// Faça um programa que leia um vetor com 15 posições para números inteiros. Depois da leitura, divida
// todos os seus elementos pelo maior valor do vetor. Mostre o vetor após os cálculos.

import 'dart:math';

void main() {
  List<int> vetor = List.generate(15, (_) => Random().nextInt(101));
  List<int> vetorA = [];
  int maiorNumero;
  print(vetor);
  maiorNumero = vetor.reduce((a, b) => a > b ? a : b);
  print(maiorNumero);
  vetor.forEach((number) {
    vetorA.add(number ~/ maiorNumero);
  });
  print(vetorA);
}
