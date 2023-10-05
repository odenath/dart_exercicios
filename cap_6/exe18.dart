// Faça um programa que preencha um vetor com 15 números, determine e mostre:
// O maior número e a posição por ele ocupada no vetor
// o menor número e a posição por ele ocupada no vetor
//tudo quase que pronto ajuda muito

import 'dart:math';

void main() {
  List<int> vetor = List.generate(10, (_) => Random().nextInt(101));
  print(vetor);
  int maior = vetor.reduce((a, b) => a > b ? a : b);
  print(maior);
  int indice = vetor.indexOf(maior);
  print(indice);
}
