// Faça um programa que leia dois vetores de 10 posições e faça a multiplicação dos elementos de mesmo índice
// , colocando o resultado em um terceiro vetor, mostre o valor resultante.

import 'dart:io';

void main() {
  List<int> vetor1 = List.filled(10, 0);
  List<int> vetor2 = List.filled(10, 0);
  List<int> vetorFinal = List.filled(10, 0);

  for (int i = 0; i < 10; i++) {
    print("Digite o valor do vetor 1 na posição $i");
    vetor1[i] = int.parse(stdin.readLineSync() ?? '0');
    print("Digite o valor do vetor 2 na posição $i");
    vetor2[i] = int.parse(stdin.readLineSync() ?? '0');
  }
  print(vetor1);
  print(vetor2);
  for (int i = 0; i < 10; i++) {
    vetorFinal[i] = (vetor1[i] * vetor2[i]);
  }
  print(vetorFinal);
}
