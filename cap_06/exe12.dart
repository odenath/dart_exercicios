// Faça um programa que receba cinco números e mostre a saída a seguir:
// Digite o 1º número
// ..................
// Os números digitados foram
// 5 + 3 + 2 + 0 +2 = 12

import 'dart:io';

void main() {
  List<int> vetor = List.filled(5, 0);
  for (int i = 0; i < vetor.length; i++) {
    print("Digite o ${i + 1}º número");
    vetor[i] = int.parse(stdin.readLineSync() ?? '0');
  }
  int soma = vetor.reduce((a, b) => a + b);
  String expressaoSoma = vetor.join(" + "); // Cria uma string da forma "5 + 3 + 2 + 0 + 2"
  print("A soma dos números é: $expressaoSoma = $soma");
}
