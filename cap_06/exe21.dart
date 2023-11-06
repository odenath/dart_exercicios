// Faça um programa que leia um vetor com 30 posições para números inteiros.
// Crie um segundo vetor, substituindo os valores nulos por 1. Mostre os dois vetores

import 'dart:io';

void main() {
  List<int?> vetor = [];
  List<int?> vetor1 = [];

  for (int i = 0; i < 30; i++) {
    int? valor = int.tryParse(stdin.readLineSync() ?? '');
    vetor.add(valor);
  }
  print(vetor);
  for (int i = 0; i < 30; i++) {
    if (vetor[i] == null) {
      vetor1.add(1);
    } else {
      vetor1.add(vetor[i]);
    }
  }
  print(vetor1);
}
