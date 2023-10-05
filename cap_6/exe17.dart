// Faça um programa que preencha dois vetores de dez posições cada um,
// determine e mostre um terceiro contendo elementos dos dois vetores anteriores ordenados de maneira decrescente.

import 'dart:math';

void main() {
  List vetor1 = List.generate(10, (_) => Random().nextInt(200) - 100);
  List vetor2 = List.generate(10, (_) => Random().nextInt(200) - 100);
  List vetorFinal = [];
  print("Vetor1: $vetor1");
  print("Vetor 2: $vetor2");
  vetorFinal = vetor1 + vetor2;
  print("Vetor final desordenado $vetorFinal");
  vetorFinal.sort((a, b) => -a.compareTo(b));
  print("Vetor final ordenado: $vetorFinal");
}


  // vetorFinal.add(vetor1);
  // vetorFinal.add(vetor2); 