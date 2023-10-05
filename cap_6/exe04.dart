// Faça um programa que preencha um vetor com 15 elementos inteiros e verifique a existencia
//  de elementos iguais a 30, mostrando as posições em que eles aparecem

import 'dart:math';

void main() {
  List<int> numerosAleatorios = List.generate(15, (index) {
    int numeroAleatorio = Random().nextInt(32);
    return numeroAleatorio;
  });
  List<int> indices = [];
  for (int i = 0; i < 15; i++) {
    if (numerosAleatorios[i] == 30) {
      indices.add(i);
    }
  }
  print(numerosAleatorios);
  print(indices);
}
