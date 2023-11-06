// Faça um programna que leia um vetor A de 10 posições. Em seguida, compacte o vetor, retirando os
// valores nulos e negativos. Armazene esse resultado no vetor B.Mostre o vetor B.
// (Lembre-se: o vetor B pode não ser completamente preenchido.)

import 'dart:io';

void main() {
  List<int?> vetorA = [];
  List<int?> vetorB = [];

  for (int i = 0; i < 3; i++) {
    print("Digite o valor do vetor");
    vetorA.add(int.tryParse(stdin.readLineSync() ?? ''));
  }
  print(vetorA);
  vetorB =vetorA.where((element) => element != null && element > 0).toList();
  print(vetorB);
}








   // int? valor = int.tryParse(stdin.readLineSync() ?? '');
