// Faça um programa que preencha o 1º vetor  com 10 números I+ e um 2º vetor com 5 números I+
// Calcule e mostre dois vetores resultantes.
// O resultante1 é composto pela soma dos par do 1º + todos do segundo vetor.
// O resultante2 é composto pela qtd de núm Ímpar do 1º tem no 2º

import 'dart:math';

void main() {
  List<int> vetor1 = List.generate(4, (_) => Random().nextInt(101));
  List<int> vetor2 = List.generate(2, (_) => Random().nextInt(101));
  List<int> resultante1 = [];
  List<int> resultante2 = [];
  int soma = 0;

  print(vetor1);
  print(vetor2);

  for (int i = 0; i < vetor1.length; i++) {
    if (vetor1[i] % 2 == 0) {
      int soma = vetor1[i];
      for (int j = 0; j < vetor2.length; j++) {
        soma += vetor2[j];
      }
      resultante1.add(soma);
      soma = 0;
    }
  }
  for (int i = 0; i < vetor1.length; i++) {
    if (vetor1[i] % 2 != 0) {
      for (int j = 0; j < vetor2.length; j++) {
        if (vetor2[j] % 2 != 0) {
          if (vetor1[i] % vetor2[j] == 0) {
            soma++;
          }
        }
      }
    }
    resultante2.add(soma);
    soma = 0;
  }
  print(resultante1);
  print("olá");
  print(resultante2);
}
